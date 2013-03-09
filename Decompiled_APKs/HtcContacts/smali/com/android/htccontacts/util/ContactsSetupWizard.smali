.class public Lcom/android/htccontacts/util/ContactsSetupWizard;
.super Lcom/android/htccontacts/app/HtcExpandableListActivity;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$HeaderListItemCache;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;,
        Lcom/android/htccontacts/util/ContactsSetupWizard$Prefs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field static final DIALOG_PROGRESS:I = 0x1e61

.field static final MSG_CHECK_IMPORT_SIM:I = 0x22b8

.field static final MSG_FINISH_VIEW_SETTING:I = 0x270f

.field static final MSG_GROUP_VISIBLE:I = 0x1a0a

.field static final MSG_STAT_REQUERY_ACCOUNTINFO:I = 0x15b3

.field public static final OPTION_ALL_CONTACT_NAME:Ljava/lang/String; = "All people"

.field public static final OPTION_ALL_CONTACT_TYPE:Ljava/lang/String; = "com.htc.contacts.allcontact"

.field protected static final QUERY_CONTACT_COUNT_TOKEN:I = 0x6a4

.field protected static final QUERY_ORDER_TOKEN:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ContactsSetupWizard"

.field protected static final UPDATE_ORDER_TOKEN:I = 0x640

.field private static mGetSimCallBackClass:Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;

.field private static mMyPhonebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImportSIM:Z

.field private mAccountCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

.field final mContext:Landroid/content/Context;

.field private mFilterContactByAccount:Z

.field mFinishedStart:Z

.field private mHeaderSeparator:Landroid/view/View;

.field private mHeaderSeparator2:Landroid/view/View;

.field private mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

.field private mImportSIMContactsHeadView:Landroid/view/View;

.field private mList:Lcom/htc/widget/HtcExpandableListView;

.field private mManagedDialog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryHandler:Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;

.field private mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field protected mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field mUIHandler:Landroid/os/Handler;

.field private mViewOptionDescriptionView:Landroid/view/View;

.field protected resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mMyPhonebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1074
    new-instance v0, Lcom/android/htccontacts/util/ContactsSetupWizard$4;

    invoke-direct {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$4;-><init>()V

    sput-object v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->isImportSIM:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mFinishedStart:Z

    .line 100
    iput-object p0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mManagedDialog:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$1;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    .line 1248
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->checkIfNeedImportSIMContacts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->doSaveAction()V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/util/ContactsSetupWizard;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/util/ContactsSetupWizard;)Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$800()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mMyPhonebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-object p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mMyPhonebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->isImportSIM:Z

    return v0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addHeaderView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 273
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 276
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    move-object v1, v2

    .line 277
    check-cast v1, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 283
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 287
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createImportSIMHeader(Landroid/view/LayoutInflater;)V

    .line 288
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createImportSIMContactsView(Landroid/view/LayoutInflater;)V

    .line 290
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v1, v3, v2, v4}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 291
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    invoke-virtual {v1, v3, v2, v4}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    invoke-virtual {v1, v3, v2, v4}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 294
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    invoke-virtual {v1, v3, v2, v4}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 295
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 296
    return-void
.end method

.method private checkIfNeedImportSIMContacts()V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->isImportSIM:Z

    .line 424
    :cond_1
    return-void
.end method

.method private createDisplayGroupHeader(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    .line 361
    const v1, 0x2090026

    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    .line 363
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    const v2, 0x208066a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator2:Landroid/view/View;

    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    .local v0, separaterTextView:Landroid/widget/TextView;
    const v1, 0x7f0a03a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    return-void
.end method

.method private createImportSIMContactsView(Landroid/view/LayoutInflater;)V
    .locals 7
    .parameter "inflater"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    const v3, 0x7f030014

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    .line 317
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 319
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    new-instance v4, Lcom/android/htccontacts/util/ContactsSetupWizard$HeaderListItemCache;

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/util/ContactsSetupWizard$HeaderListItemCache;-><init>(ZZ)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    const v4, 0x7f07003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

    .line 322
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    const v4, 0x7f07003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x7f0a03a0

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, importSimLabel:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "SIM"

    const-string v4, "UIM"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 338
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x7f0a03a1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 339
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 343
    return-void
.end method

.method private createImportSIMHeader(Landroid/view/LayoutInflater;)V
    .locals 5
    .parameter "inflater"

    .prologue
    .line 345
    const v2, 0x2090026

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    .line 346
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    const v3, 0x208066a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mHeaderSeparator:Landroid/view/View;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .local v1, separaterTextView:Landroid/widget/TextView;
    const v2, 0x7f0a03a0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, importSimLabel:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const-string v2, "SIM"

    const-string v3, "UIM"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method private createViewOptionDescriptionView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 305
    const v1, 0x7f030012

    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    .line 306
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 307
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mViewOptionDescriptionView:Landroid/view/View;

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    .local v0, descriptionTextView:Landroid/widget/TextView;
    const v1, 0x7f0a03a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    return-void
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->access$300(Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;)Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->access$300(Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;)Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "ContactsSetupWizard"

    const-string v1, "madapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x22b8

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private findViewsAndSet()V
    .locals 6

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    .line 227
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setTitleBar()V

    .line 229
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_list_divider"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, childDividerResId:I
    if-lez v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    new-instance v2, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-direct {v2, p0, p0, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;Landroid/content/Context;Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    iput-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    .line 243
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 244
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 246
    return-void
.end method

.method private initHeaderView()V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 255
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isHasSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createImportSIMHeader(Landroid/view/LayoutInflater;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createImportSIMContactsView(Landroid/view/LayoutInflater;)V

    .line 260
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createDisplayGroupHeader(Landroid/view/LayoutInflater;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->createViewOptionDescriptionView(Landroid/view/LayoutInflater;)V

    .line 262
    return-void
.end method

.method private isHasSIM()Z
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isCanReadWriteSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainProgressDialog(Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 657
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 658
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 660
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 661
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mManagedDialog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public isAllChildChecked(I)Z
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 1482
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChildrenCount(I)I

    move-result v2

    .line 1484
    .local v2, childrenCount:I
    const/4 v0, 0x0

    .line 1485
    .local v0, checkCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1486
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v4, p1, v3}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1487
    .local v1, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    if-eqz v1, :cond_0

    .line 1488
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1485
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1491
    .end local v1           #child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    :cond_1
    if-nez v0, :cond_2

    .line 1492
    const/4 v4, 0x0

    .line 1494
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 219
    :try_start_0
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1442
    move-object v2, p2

    check-cast v2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 1443
    .local v2, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v4, p3, p4}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1445
    .local v3, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getAccountSet()Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    move-result-object v1

    .line 1446
    .local v1, accountSet:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    invoke-virtual {v1, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1448
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    if-eqz v3, :cond_0

    .line 1449
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemCheckBox;->toggle()V

    .line 1451
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->putVisible(Z)V

    .line 1452
    iget-boolean v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    invoke-virtual {p0, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isAllChildChecked(I)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1453
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isAllChildChecked(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    .line 1454
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->notifyDataSetChanged()V

    .line 1462
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->resolver:Landroid/content/ContentResolver;

    .line 172
    new-instance v1, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    iput-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mQueryHandler:Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;

    .line 174
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->findViewsAndSet()V

    .line 176
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->initHeaderView()V

    .line 178
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setListeners()V

    .line 179
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 181
    new-instance v1, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    sput-object v1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mGetSimCallBackClass:Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;

    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    sget-object v2, Lcom/android/htccontacts/util/ContactsSetupWizard;->mGetSimCallBackClass:Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->registSimContactsListener(Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x15b3

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 439
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 432
    :pswitch_0
    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, displayStr:Ljava/lang/String;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 436
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1e61
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mManagedDialog:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 208
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 212
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    sget-object v3, Lcom/android/htccontacts/util/ContactsSetupWizard;->mGetSimCallBackClass:Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->unRegistSimContactsListener(Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;)V

    .line 213
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onDestroy()V

    .line 214
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 1500
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 1506
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onPause()V

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onResume()V

    .line 199
    invoke-direct {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->addHeaderView()V

    .line 200
    return-void
.end method

.method public setAllChildToggle(Landroid/view/View;IZ)V
    .locals 4
    .parameter "view"
    .parameter "groupPosition"
    .parameter "isChecked"

    .prologue
    .line 1466
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v3, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChildrenCount(I)I

    move-result v1

    .line 1467
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1468
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v3, p2, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1470
    .local v0, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->putVisible(Z)V

    .line 1467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1478
    .end local v0           #child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->notifyDataSetChanged()V

    .line 1479
    return-void
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/util/ContactsSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$2;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsHeadView:Landroid/view/View;

    new-instance v1, Lcom/android/htccontacts/util/ContactsSetupWizard$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$3;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setResultExtra()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IS_IMPORT_SIM_FLAG"

    iget-boolean v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard;->isImportSIM:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setResult(ILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 191
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 192
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 193
    const v1, 0x7f0a039f

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 194
    return-void
.end method
