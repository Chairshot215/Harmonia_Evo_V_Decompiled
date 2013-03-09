.class final Lcom/android/htccontacts/util/AccountSelectionUtil$1;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$sources:Lcom/android/htccontacts/model/AccountTypeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 128
    .local p3, x2:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    iput-object p4, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$1;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/AccountSelectionUtil$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 135
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v5, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$1;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v2

    .line 139
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {p0}, Lcom/android/htccontacts/util/AccountSelectionUtil$1;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, context:Landroid/content/Context;
    new-instance v4, Lcom/htc/widget/HtcListItem;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    .local v4, v:Lcom/htc/widget/HtcListItem;
    new-instance v3, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 143
    .local v3, twoLineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 145
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/android/htccontacts/model/AccountType;->getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v2, v1}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 147
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 153
    :goto_0
    return-object v4

    .line 149
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/android/htccontacts/model/AccountType;->getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
