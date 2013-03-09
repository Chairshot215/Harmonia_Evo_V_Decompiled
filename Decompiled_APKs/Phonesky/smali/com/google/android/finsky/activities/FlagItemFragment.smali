.class public Lcom/google/android/finsky/activities/FlagItemFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    }
.end annotation


# instance fields
.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mFlagMessage:Ljava/lang/String;

.field private mFlagRadioButtons:Landroid/widget/RadioGroup;

.field private mSelectedRadioButtonId:I

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method private getAppFlagTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 308
    .local v0, ownedApp:Z
    :goto_0
    invoke-static {v0}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->getAppFlags(Z)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 307
    .end local v0           #ownedApp:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFlagTypesForCurrentCorpus(I)Ljava/util/List;
    .locals 2
    .parameter "backendId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getAppFlagTypes()Ljava/util/List;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 299
    invoke-static {}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->getMusicFlags()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported backend type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 317
    .local v2, index:I
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, currentTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 321
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    .line 322
    .local v0, currentFlag:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/activities/FlagItemFragment;
    .locals 2
    .parameter "url"

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FlagItemFragment;-><init>()V

    .line 83
    .local v0, fragment:Lcom/google/android/finsky/activities/FlagItemFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method private postFlag()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 293
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f040077

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "flag_free_text_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    .line 157
    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    .line 160
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 187
    :goto_1
    return-void

    .line 157
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToLoading()V

    .line 164
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$3;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 93
    return-void
.end method

.method public onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .locals 13
    .parameter "document"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToData()V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v4, p0

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    .line 204
    .local v12, type:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    new-instance v10, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 205
    .local v10, button:Landroid/widget/RadioButton;
    iget v0, v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0e

    invoke-virtual {v10, v0, v1}, Landroid/widget/RadioButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 207
    invoke-virtual {v10, v12}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 209
    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    iget v1, v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v10}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 215
    .end local v10           #button:Landroid/widget/RadioButton;
    .end local v12           #type:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 216
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDataChanged()V

    .line 217
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    .line 101
    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    .line 103
    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    .line 104
    .local v0, buttonBar:Lcom/google/android/finsky/layout/ButtonBar;
    const v2, 0x7f070209

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/google/android/finsky/activities/FlagItemFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;Lcom/google/android/finsky/layout/ButtonBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 114
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 140
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 4

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    .line 119
    .local v0, currentFlag:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->requireUserComment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 125
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "flag_item_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 128
    iget v3, v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->textEntryStringId:I

    invoke-static {v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->newInstance(I)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    move-result-object v1

    .line 130
    .local v1, dialog:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 131
    const-string v3, "flag_item_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v1           #dialog:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
    .end local v2           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    goto :goto_0
.end method

.method public onPositiveClick(Ljava/lang/String;)V
    .locals 0
    .parameter "flagMessage"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    .line 287
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    const-string v0, "flag_free_text_message"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "flag_selected_button_id"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v1

    iget v1, v1, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    :cond_0
    return-void
.end method

.method public rebindActionBar()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0701f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 264
    return-void
.end method

.method public rebindViews()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 221
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v7, 0x7f080141

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, desc:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const v6, 0x7f0701f8

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 230
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget-boolean v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    if-eqz v6, :cond_3

    .line 231
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v7, 0x7f0800bd

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 232
    .local v5, thumbnail:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconWidth(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0067

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    .end local v5           #thumbnail:Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 247
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v7, 0x7f080143

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, footer:Landroid/widget/TextView;
    const v6, 0x7f0701fb

    new-array v7, v9, [Ljava/lang/Object;

    sget-object v8, Lcom/google/android/finsky/config/G;->musicDmcaReportLink:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/google/android/finsky/activities/FlagItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, footerText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 252
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    .end local v1           #footer:Landroid/widget/TextView;
    .end local v2           #footerText:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    new-array v8, v9, [Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v10, v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->rebindActionBar()V

    .line 258
    .end local v0           #desc:Landroid/widget/TextView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    return-void

    .line 223
    .restart local v0       #desc:Landroid/widget/TextView;
    :cond_2
    const v6, 0x7f0701fa

    goto/16 :goto_0

    .line 237
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v4

    .line 242
    .local v4, summaryLayoutId:I
    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1
.end method

.method protected requestData()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
