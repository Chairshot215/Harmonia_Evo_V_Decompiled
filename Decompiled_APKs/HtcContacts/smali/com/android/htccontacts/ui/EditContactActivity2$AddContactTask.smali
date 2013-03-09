.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# instance fields
.field mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field mWritableAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    .line 4071
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 4066
    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4072
    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    .line 4073
    return-void
.end method

.method static synthetic access$6300(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4063
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->showPhoneTypeAccountWarningDialog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 4063
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4063
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 4063
    invoke-static/range {p0 .. p6}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferToNewEntityDelta(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 4063
    invoke-static {p0, p1, p2, p3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4063
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4063
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getProperAccount()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method private filterAccountList(Lcom/android/htccontacts/ui/EditContactActivity2;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4593
    .local p2, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 4594
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 4595
    .local v5, extras:Landroid/os/Bundle;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4596
    .local v11, removedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 4598
    const-string v13, "phone"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v8, 0x1

    .line 4599
    .local v8, insertPhone:Z
    :goto_0
    const-string v13, "postal"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const/4 v9, 0x1

    .line 4600
    .local v9, insertPostal:Z
    :goto_1
    const-string v13, "email"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const/4 v7, 0x1

    .line 4602
    .local v7, insertMail:Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v12

    .line 4604
    .local v12, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4605
    .local v1, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v2, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4606
    .local v2, accountType:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 4607
    .local v4, dataSet:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4608
    invoke-virtual {v12, v2, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v3

    .line 4610
    .local v3, contactSource:Lcom/android/htccontacts/model/AccountType;
    if-eqz v8, :cond_4

    .line 4611
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v13}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v13

    if-nez v13, :cond_4

    .line 4612
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4598
    .end local v1           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #contactSource:Lcom/android/htccontacts/model/AccountType;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #insertMail:Z
    .end local v8           #insertPhone:Z
    .end local v9           #insertPostal:Z
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 4599
    .restart local v8       #insertPhone:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 4600
    .restart local v9       #insertPostal:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 4616
    .restart local v1       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v3       #contactSource:Lcom/android/htccontacts/model/AccountType;
    .restart local v4       #dataSet:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #insertMail:Z
    .restart local v12       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_4
    if-eqz v9, :cond_5

    .line 4617
    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v13}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v13

    if-nez v13, :cond_5

    .line 4618
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4622
    :cond_5
    if-eqz v7, :cond_0

    .line 4623
    const-string v13, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v13}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v13

    if-nez v13, :cond_0

    .line 4624
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4632
    .end local v1           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #contactSource:Lcom/android/htccontacts/model/AccountType;
    .end local v4           #dataSet:Ljava/lang/String;
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 4633
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4634
    .restart local v1       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4638
    .end local v1           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #insertMail:Z
    .end local v8           #insertPhone:Z
    .end local v9           #insertPostal:Z
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_7
    return-object p2
.end method

.method private getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;
    .locals 25
    .parameter "target"
    .parameter "account"
    .parameter "addPhoneType"

    .prologue
    .line 4723
    if-eqz p2, :cond_0

    const-string v2, "com.htc.android.pcsc"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v22, 0x0

    .line 4855
    :goto_0
    return-object v22

    .line 4724
    :cond_1
    const-string v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    .line 4726
    .local v23, dialogInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001d

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 4727
    .local v20, addPhoneDialogView:Landroid/view/View;
    if-eqz v20, :cond_3

    .line 4728
    const v2, 0x7f07004c

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 4729
    .local v24, tv:Landroid/widget/TextView;
    if-eqz v24, :cond_2

    .line 4730
    const v2, 0x7f0a02ea

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a0029

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4733
    :cond_2
    const v2, 0x7f07004e

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    .line 4734
    .local v21, checkBox:Landroid/widget/CheckBox;
    if-eqz v21, :cond_3

    .line 4735
    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/ui/EditContactActivity2;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4746
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->showPhoneTypeAccountWarningDialog(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4752
    .end local v21           #checkBox:Landroid/widget/CheckBox;
    .end local v24           #tv:Landroid/widget/TextView;
    :cond_3
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 4753
    .local v7, oldEntity:Lcom/android/htccontacts/model/EntityDelta;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v8

    .line 4755
    .local v8, oldSource:Lcom/android/htccontacts/model/AccountType;
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->obtainOwnGroupTitleList(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;)Ljava/util/ArrayList;

    move-result-object v10

    .line 4756
    .local v10, oldGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNewDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 4760
    .local v9, oldDisplayName:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0274

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;ZLcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0152

    new-instance v11, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;

    move-object/from16 v12, p0

    move/from16 v13, p3

    move-object/from16 v14, p1

    move-object v15, v7

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;ZLcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    .line 4855
    .local v22, dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 4746
    .end local v7           #oldEntity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #oldSource:Lcom/android/htccontacts/model/AccountType;
    .end local v9           #oldDisplayName:Ljava/lang/String;
    .end local v10           #oldGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v22           #dialog:Landroid/app/Dialog;
    .restart local v21       #checkBox:Landroid/widget/CheckBox;
    .restart local v24       #tv:Landroid/widget/TextView;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getProperAccount()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 5

    .prologue
    .line 4858
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 4868
    :goto_0
    return-object v3

    .line 4859
    :cond_1
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 4860
    :cond_2
    const/4 v2, 0x0

    .line 4861
    .local v2, peoperAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4863
    .local v0, a:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.android.pcsc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4864
    move-object v2, v0

    .end local v0           #a:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_4
    move-object v3, v2

    .line 4868
    goto :goto_0
.end method

.method private getWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 5
    .parameter "target"
    .parameter "account"
    .parameter "accountTypeDesc"

    .prologue
    .line 4562
    if-eqz p3, :cond_0

    const v2, 0x7f0a02e8

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4564
    .local v1, displayMsg:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a01da

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a014f

    new-instance v4, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;

    invoke-direct {v4, p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0152

    new-instance v4, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$4;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$4;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 4589
    .local v0, dialog:Landroid/app/Dialog;
    return-object v0

    .line 4562
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #displayMsg:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a02e9

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static obtainOwnGroupTitleList(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;)Ljava/util/ArrayList;
    .locals 12
    .parameter "target"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            "Lcom/android/htccontacts/model/EntityDelta;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4456
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4457
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7600(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4458
    .local v6, newAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4459
    .local v0, deltaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v6, :cond_0

    .line 4460
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4462
    :cond_0
    if-eqz v0, :cond_2

    .line 4463
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 4464
    .local v9, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v10, "data1"

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4466
    .local v5, idString:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4467
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4468
    .local v3, id:J
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v10

    iget-object v10, v10, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupTitleCacheMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4469
    .local v8, title:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v10

    iget-object v10, v10, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4470
    .local v1, groupIsReadOnly:I
    if-eqz v8, :cond_1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 4471
    new-instance v10, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    invoke-direct {v10, v8, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4474
    .end local v1           #groupIsReadOnly:I
    .end local v3           #id:J
    .end local v8           #title:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 4479
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #idString:Ljava/lang/String;
    .end local v9           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    return-object v7
.end method

.method private static processTransferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "target"
    .parameter "oldSource"
    .parameter "newAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4507
    .local p3, oldGroupItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 4508
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 4511
    .local v0, newSource:Lcom/android/htccontacts/model/AccountType;
    invoke-static {p0, p1, v0, p3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->transferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountType;Ljava/util/ArrayList;)V

    .line 4515
    return-void
.end method

.method private static processTransferToNewEntityDelta(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "target"
    .parameter "oldEntity"
    .parameter "newEntity"
    .parameter "newAccount"
    .parameter "oldSource"
    .parameter "oldDisplayName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4489
    .local p6, oldGroupItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    if-eqz p5, :cond_0

    .line 4490
    invoke-static {p0, p1, p5}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->processDisplaynameToEntityDeltaStructedName(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDelta;Ljava/lang/String;)V

    .line 4493
    :cond_0
    const/4 v5, 0x0

    .line 4494
    .local v5, processor:Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;
    if-eqz p3, :cond_1

    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.anddroid.contacts.sim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4495
    new-instance v5, Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;

    .end local v5           #processor:Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;
    invoke-direct {v5, p0}, Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;-><init>(Landroid/content/Context;)V

    .line 4498
    .restart local v5       #processor:Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;
    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->transferToNewEntityDelta(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;)Z

    .line 4500
    return-void
.end method

.method private selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 4650
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    .line 4651
    return-void
.end method

.method private selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    .locals 10
    .parameter "account"
    .parameter "putExtra"

    .prologue
    const/4 v1, 0x0

    .line 4654
    iget-object v8, p0, Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 4655
    .local v6, target:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-nez v6, :cond_0

    .line 4720
    :goto_0
    return-void

    .line 4658
    :cond_0
    invoke-static {v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v5

    .line 4659
    .local v5, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4660
    .local v7, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 4661
    const-string v8, "account_name"

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    const-string v8, "account_type"

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    :goto_1
    if-eqz p1, :cond_1

    .line 4669
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4670
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->setLastCreatedAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4675
    :cond_1
    new-instance v3, Lcom/android/htccontacts/model/EntityDelta;

    invoke-static {v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/android/htccontacts/model/EntityDelta;-><init>(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)V

    .line 4677
    .local v3, insert:Lcom/android/htccontacts/model/EntityDelta;
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4678
    .local v0, accountType:Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 4680
    .local v1, dataSet:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v4

    .line 4684
    .local v4, source:Lcom/android/htccontacts/model/AccountType;
    if-eqz p2, :cond_3

    .line 4685
    invoke-virtual {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 4686
    .local v2, extras:Landroid/os/Bundle;
    invoke-static {v6, v4, v3, v2}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 4691
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_3
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-static {v3, v4, v8}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 4692
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-static {v3, v4, v8}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 4696
    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-static {v3, v4, v8}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 4711
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v8

    if-nez v8, :cond_6

    .line 4713
    invoke-static {v3}, Lcom/android/htccontacts/model/EntityDeltaList;->fromSingle(Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v8

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v6, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2902(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;

    goto :goto_0

    .line 4664
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #insert:Lcom/android/htccontacts/model/EntityDelta;
    .end local v4           #source:Lcom/android/htccontacts/model/AccountType;
    :cond_4
    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4665
    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .restart local v3       #insert:Lcom/android/htccontacts/model/EntityDelta;
    :cond_5
    move-object v0, v1

    .line 4677
    goto :goto_2

    .line 4716
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v1       #dataSet:Ljava/lang/String;
    .restart local v4       #source:Lcom/android/htccontacts/model/AccountType;
    :cond_6
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDeltaList;->clear()V

    .line 4718
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private showPhoneTypeAccountWarningDialog(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 4871
    const/4 v1, 0x1

    .line 4873
    .local v1, show:Z
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isBackupAssistantEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4874
    const/4 v2, 0x0

    .line 4880
    :goto_0
    return v2

    .line 4876
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4877
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 4878
    const-string v2, "show_add_phone_type_account_warning"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    move v2, v1

    .line 4880
    goto :goto_0
.end method

.method private static transferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountType;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "target"
    .parameter "srcSource"
    .parameter "dstSource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, groupItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4523
    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p2, v8}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 4525
    .local v1, dataKind:Lcom/android/htccontacts/model/DataKind;
    if-nez v1, :cond_1

    .line 4555
    :cond_0
    :goto_0
    return-void

    .line 4531
    :cond_1
    iget-object v8, p1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4532
    new-instance v5, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    const-string v8, "My Contacts"

    invoke-direct {v5, v8, v11}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    .line 4533
    .local v5, removedGroupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4538
    .end local v5           #removedGroupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4539
    new-instance v6, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 4541
    .local v6, task:Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4542
    .local v7, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4543
    .local v2, groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 4544
    .local v3, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    iget-object v8, v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4545
    iget v8, v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4548
    .end local v3           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4549
    .local v0, data:Landroid/content/Intent;
    const-string v8, "SELECTED_TITLE"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4550
    const-string v8, "extra_info_index"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4551
    const-string v8, "SELECTED_GROUP_IS_READ_ONLY"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4552
    const-string v8, "SELECTED_ID"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4553
    new-array v8, v11, [Landroid/content/Intent;

    aput-object v0, v8, v10

    invoke-virtual {v6, v8}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
    .locals 30
    .parameter "target"
    .parameter "params"

    .prologue
    .line 4114
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v7

    .line 4117
    .local v7, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    new-instance v15, Landroid/view/ContextThemeWrapper;

    const v3, 0x103000c

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4118
    .local v15, dialogContext:Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 4121
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 4122
    .local v19, intent:Landroid/content/Intent;
    const/16 v16, 0x0

    .line 4123
    .local v16, excludeSIM:Z
    if-eqz v19, :cond_0

    .line 4124
    const-string v3, "EXTRA_EXCLUDE_SIM"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 4127
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 4128
    .local v6, writable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v16, :cond_2

    .line 4129
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 4133
    :cond_2
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    .line 4135
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->getPreRequestOpenAccoutType(Landroid/app/Activity;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5700(Landroid/app/Activity;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v25

    .line 4137
    .local v25, requestType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->getPreRequestOpenAccoutName(Landroid/app/Activity;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5800(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v24

    .line 4138
    .local v24, requestAccountName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 4139
    .local v23, requestAccountFromExtra:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v25, :cond_3

    .line 4140
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->pickRequestOpenAccountListWithType(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Ljava/util/ArrayList;
    invoke-static {v6, v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5900(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Ljava/util/ArrayList;

    move-result-object v20

    .line 4141
    .local v20, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4142
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #requestAccountFromExtra:Lcom/android/htccontacts/model/AccountWithDataSet;
    check-cast v23, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4146
    .end local v20           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .restart local v23       #requestAccountFromExtra:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 4147
    if-nez v23, :cond_4

    .line 4148
    new-instance v23, Lcom/android/htccontacts/model/AccountWithDataSet;

    .end local v23           #requestAccountFromExtra:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v3, "pcsc"

    const-string v4, "com.htc.android.pcsc"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4, v5}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    .restart local v23       #requestAccountFromExtra:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_4
    if-eqz v23, :cond_5

    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    if-eqz v3, :cond_5

    .line 4153
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4154
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    .line 4155
    const/16 v22, 0x0

    .line 4450
    :goto_0
    return-object v22

    .line 4159
    :cond_5
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4160
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->getTheOnlyViewAccountType(Landroid/content/ContentResolver;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-static {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6000(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/ContentResolver;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v21

    .line 4163
    .local v21, onlyTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    if-eqz v21, :cond_9

    .line 4164
    if-eqz v16, :cond_6

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4165
    :cond_6
    const/16 v27, 0x0

    .line 4166
    .local v27, targetAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4167
    .local v11, accs:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v3, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v11, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4169
    move-object/from16 v27, v11

    .line 4173
    .end local v11           #accs:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_8
    if-eqz v27, :cond_9

    .line 4174
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4175
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    .line 4176
    const/16 v22, 0x0

    goto :goto_0

    .line 4183
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #onlyTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v27           #targetAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_9
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    if-eqz v3, :cond_c

    .line 4187
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 4190
    .local v17, extras:Landroid/os/Bundle;
    if-nez v16, :cond_a

    new-instance v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v4, "SIM"

    const-string v5, "com.anddroid.contacts.sim"

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-direct {v3, v4, v5, v0}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->isAcceptExtraData(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z
    invoke-static {v0, v3, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6100(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const/16 v16, 0x1

    .line 4194
    :goto_1
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Landroid/content/Context;Z)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v10

    .line 4199
    .local v10, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4200
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    .line 4201
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 4190
    .end local v10           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_b
    const/16 v16, 0x0

    goto :goto_1

    .line 4208
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4209
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4210
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 4214
    :cond_d
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4216
    .local v28, writableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 4218
    .restart local v17       #extras:Landroid/os/Bundle;
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 4219
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4220
    .restart local v10       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->isAcceptExtraData(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z
    invoke-static {v0, v10, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6100(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z

    move-result v9

    .line 4221
    .local v9, accept:Z
    if-nez v9, :cond_e

    .line 4222
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4229
    .end local v9           #accept:Z
    .end local v10           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 4230
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4231
    .restart local v10       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    const/16 v26, 0x1

    .line 4232
    .local v26, reset:Z
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v3

    if-nez v3, :cond_10

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 4233
    :cond_10
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/model/EntityDelta;

    .line 4234
    .local v14, delta:Lcom/android/htccontacts/model/EntityDelta;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->checkAccountChange(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;)Z
    invoke-static {v14, v10}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6200(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 4235
    const/16 v26, 0x0

    .line 4236
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4242
    .end local v14           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_12
    if-eqz v26, :cond_13

    .line 4243
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4245
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 4248
    .end local v10           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v26           #reset:Z
    :cond_14
    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;

    const v5, 0x209004b

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/content/Context;ILjava/util/List;Lcom/android/htccontacts/model/AccountTypeManager;Landroid/view/LayoutInflater;)V

    .line 4286
    .local v2, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v13, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/widget/ArrayAdapter;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 4406
    .local v13, clickListenerSelectContactType:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$3;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)V

    .line 4445
    .local v12, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v22, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V

    .line 4446
    .local v22, pack:Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->adapter:Landroid/widget/ArrayAdapter;

    .line 4447
    move-object/from16 v0, v22

    iput-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4448
    move-object/from16 v0, v22

    iput-object v12, v0, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 4449
    const v3, 0x7f0a0051

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->titleResId:I

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4063
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;)V
    .locals 10
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4887
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    .line 4888
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;

    .line 4889
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4893
    if-eqz v2, :cond_0

    .line 4894
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->DismissAndUnManageDialog(Landroid/app/Dialog;)V
    invoke-static {p1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8400(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    .line 4904
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_0
    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z
    invoke-static {p1, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4202(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 4905
    if-eqz p2, :cond_2

    .line 4906
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4907
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget v6, p2, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->titleResId:I

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4908
    iget-object v6, p2, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->adapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p2, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4909
    iget-object v6, p2, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4913
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V
    invoke-static {p1, v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6800(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    .line 4954
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 4915
    :cond_2
    invoke-static {p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 4916
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v4, v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 4923
    .local v5, writable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 4924
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindAddContactEditors()V

    .line 4927
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v6, :cond_7

    .line 4928
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v8, v8, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4930
    .local v3, label:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 4931
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setChangeAccountItemText(Ljava/lang/String;)V

    .line 4938
    .end local v3           #label:Ljava/lang/String;
    :cond_3
    :goto_1
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    if-eqz v6, :cond_4

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4940
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->requestFocusNameEditor()Z

    .line 4942
    :cond_4
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xda

    if-eq v6, v7, :cond_5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x1b

    if-ne v6, v7, :cond_6

    .line 4944
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_6

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4945
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f0a03c5

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 4949
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->showPhoneTypeAccountWarningDialog(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4950
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-direct {p0, p1, v6, v9}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;

    move-result-object v1

    .line 4951
    .local v1, d:Landroid/app/Dialog;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V
    invoke-static {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6800(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 4934
    .end local v1           #d:Landroid/app/Dialog;
    :cond_7
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4935
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->disableChangeAccountItem()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4063
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 4077
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 4078
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4082
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4083
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0128

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4084
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 4085
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4086
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 4087
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->progress:Ljava/lang/ref/WeakReference;

    .line 4088
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialogDelayed(Landroid/app/Dialog;)V
    invoke-static {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5600(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    .line 4109
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4063
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method
