.class public Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StoredValueTopUpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mLastShownErrorId:I

.field private mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingIndicator:Landroid/view/View;

.field private mSelectedDocumentFormattedAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 154
    const-string v1, "Non-STORED_VALUE instrument passed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    const-string v1, "Instrument without TopupInfo passed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "list_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getOptionsListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private syncPositiveButton()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, hasChecked:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 289
    return-void

    .line 287
    .end local v0           #hasChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    if-ne p1, v3, :cond_2

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, returnedData:Landroid/content/Intent;
    const-string v2, "billing_flow_error"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const-string v5, "billing_flow_canceled"

    if-nez p2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 300
    const v2, 0x7f070087

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, successMessage:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 304
    .end local v1           #successMessage:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(ILandroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    .line 309
    .end local v0           #returnedData:Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v0       #returnedData:Landroid/content/Intent;
    :cond_1
    move v2, v4

    .line 297
    goto :goto_0

    .line 308
    .end local v0           #returnedData:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setContentView(I)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    .line 177
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    .line 179
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v2, 0x7f07019f

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 181
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 182
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    .line 186
    if-nez p1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    const-string v3, "list_sidecar"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v1, "selected_document_formatted_amount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    .line 197
    const-string v1, "last_shown_error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    .line 198
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "list_sidecar"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    iput-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    .line 284
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    .line 332
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 347
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 315
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v10

    .line 316
    .local v10, checkedIndex:I
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    .line 317
    .local v11, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v11, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v12

    .line 318
    .local v12, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-nez v12, :cond_0

    .line 319
    const-string v0, "Document selected without PURCHASE offer. Ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v5, v4

    move v6, v3

    move-object v7, v4

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    .line 342
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 214
    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    .line 215
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "last_shown_error"

    iget v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v0, "selected_document_formatted_amount"

    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->load()V

    .line 224
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 12
    .parameter "fragment"

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 234
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 236
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/ButtonBar;->setVisibility(I)V

    .line 238
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v5

    .line 239
    .local v5, state:I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 240
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getDocuments()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    .line 241
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 242
    .local v6, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 243
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v1           #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x109000f

    invoke-direct {v0, p0, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 247
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 249
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 250
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 252
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v7, v10}, Lcom/google/android/finsky/layout/ButtonBar;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    .line 279
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 254
    :cond_2
    if-ne v5, v9, :cond_3

    .line 255
    iget-object v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 257
    iget v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getErrorInstance()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 258
    const-string v7, "Already showed error %d, ignoring."

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 261
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getErrorInstance()I

    move-result v7

    iput v7, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    .line 262
    const/4 v3, 0x0

    .line 263
    .local v3, errorMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getSubstate()I

    move-result v7

    if-nez v7, :cond_6

    .line 264
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getLastError()Lcom/android/volley/VolleyError;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v3

    .line 268
    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    .line 269
    const v7, 0x7f07019f

    const/4 v8, -0x1

    invoke-static {v3, v7, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    .line 271
    .local v2, errorDialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    invoke-virtual {v2, v11, v10, v11}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "error_dialog"

    invoke-virtual {v2, v7, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v2           #errorDialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getSubstate()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 266
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    const v8, 0x7f070085

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 274
    :cond_7
    const-string v7, "Received error without error message."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    .line 229
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 230
    return-void
.end method
