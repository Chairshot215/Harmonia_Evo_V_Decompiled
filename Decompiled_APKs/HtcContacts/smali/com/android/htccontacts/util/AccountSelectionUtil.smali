.class public Lcom/android/htccontacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccountSelectionUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static doExport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "account"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doExportToSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doExportToSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x7f0a0293
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doExportToSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "use_phone_storage"

    .prologue
    .line 231
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->isValidGoogleAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-static {p1, p0}, Lcom/android/htccontacts/model/GoogleAccountType;->createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, exportIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 237
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "use_phone_storage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "account"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 180
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 184
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x7f0a028b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "use_phone_storage"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->isValidGoogleAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {p1, p0}, Lcom/android/htccontacts/model/GoogleAccountType;->createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 221
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, importIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 223
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "use_phone_storage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->isValidGoogleAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {p1, p0}, Lcom/android/htccontacts/model/GoogleAccountType;->createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 208
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, importIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 210
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "onCancelListener"

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;
    .locals 9
    .parameter "context"
    .parameter "resId"
    .parameter "onCancelListener"
    .parameter "withSim"

    .prologue
    const/4 v7, 0x1

    .line 114
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 115
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz p3, :cond_2

    invoke-virtual {v4, v7}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 122
    .local v6, writableAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :goto_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v7, 0x103000c

    invoke-direct {v2, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v2, dialogContext:Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 126
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/util/AccountSelectionUtil$1;

    const v7, 0x209004b

    invoke-direct {v0, p0, v7, v6, v4}, Lcom/android/htccontacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 157
    .local v0, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const v5, 0x7f0a0051

    .line 158
    .local v5, titleID:I
    const v7, 0x7f0a0293

    if-eq p1, v7, :cond_0

    const v7, 0x7f0a0294

    if-ne p1, v7, :cond_1

    .line 160
    :cond_0
    const v5, 0x7f0a0053

    .line 162
    :cond_1
    new-instance v1, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 164
    .local v1, accountSelectedListener:Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    return-object v7

    .line 115
    .end local v0           #accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v1           #accountSelectedListener:Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;
    .end local v2           #dialogContext:Landroid/content/Context;
    .end local v3           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v5           #titleID:I
    .end local v6           #writableAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :cond_2
    invoke-virtual {v4, v7}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0
.end method

.method public static getSelectAccountDialogWithoutSim(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
