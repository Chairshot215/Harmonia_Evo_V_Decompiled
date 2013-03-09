.class public Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.super Lcom/android/htccontacts/app/HtcExpandableListActivity;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateTask;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateDBTask;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryGroupsTask;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$HeaderListItemCache;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;,
        Lcom/android/htccontacts/ui/ContactsPreferencesActivity$Prefs;
    }
.end annotation


# static fields
.field private static final ALL_CONTACT_DISPLAY_FIRST_NAME:I = 0x0

.field private static final ALL_CONTACT_DISPLAY_LAST_NAME:I = 0x1

.field private static final ALL_CONTACT_SORT_FIRST_NAME:I = 0x0

.field private static final ALL_CONTACT_SORT_LAST_NAME:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field private static final DIALOG_DISPLAY_FIRST_NAME:I = 0x0

.field private static final DIALOG_DISPLAY_LAST_NAME:I = 0x1

.field private static final DIALOG_DISPLAY_ORDER:I = 0x2

.field static final DIALOG_PROGRESS:I = 0x1e61

.field private static final DIALOG_SORT_FIRST_NAME:I = 0x0

.field private static final DIALOG_SORT_LAST_NAME:I = 0x1

.field private static final DIALOG_SORT_ORDER:I = 0x1

.field static final MSG_FINISH_VIEW_SETTING:I = 0x270f

.field static final MSG_GROUP_VISIBLE:I = 0x1a0a

.field static final MSG_UPDATE_PREFS:I = 0x22b8

.field public static final OPTION_ALL_CONTACT_NAME:Ljava/lang/String; = "All people"

.field public static final OPTION_ALL_CONTACT_TYPE:Ljava/lang/String; = "com.htc.contacts.allcontact"

.field protected static final QUERY_CONTACT_COUNT_TOKEN:I = 0x6a4

.field protected static final QUERY_ORDER_TOKEN:I = 0x5dc

.field private static final SEARCH_CONTACT_CONFGS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ContactsPreferencesActivity"

.field protected static final UPDATE_ORDER_TOKEN:I = 0x640

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkedItems:[Z

.field private isDisplayNameTypeChange:Z

.field private isDisplayOnlyPhoneChange:Z

.field private isSortNameTypeChange:Z

.field private mAccountCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

.field private mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

.field private mAddPhoneContactWarningFlag:Z

.field private mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field private mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mDisplayNameType:I

.field private mDisplayOnlyPhoneFlag:Z

.field private mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field private mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

.field private mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field protected mEmptyTextView:Landroid/widget/TextView;

.field private mFilterContactByAccount:Z

.field mFinishedStart:Z

.field private mHeaderSeparator:Landroid/view/View;

.field private mList:Lcom/htc/widget/HtcExpandableListView;

.field protected mLoadingLayout:Landroid/view/View;

.field protected mLoadingTextView:Landroid/widget/TextView;

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

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mQueryHandler:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;

.field private mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field private mSearchConfiguration:[Z

.field private mShowAddPhoneContactWarning:Z

.field private mSortNameType:I

.field private mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field mUIHandler:Landroid/os/Handler;

.field protected resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1261
    new-instance v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$9;

    invoke-direct {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$9;-><init>()V

    sput-object v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mShowAddPhoneContactWarning:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mFilterContactByAccount:Z

    .line 114
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    .line 115
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    .line 117
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayOnlyPhoneChange:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayNameTypeChange:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isSortNameTypeChange:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mFinishedStart:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mManagedDialog:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mUIHandler:Landroid/os/Handler;

    .line 1426
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->doSavePrefs()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSearchContactConfigDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->loadPrefs()V

    return-void
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1253
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
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4008

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 330
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 331
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 333
    invoke-static {v4, v5}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mFilterContactByAccount:Z

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mShowAddPhoneContactWarning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_2
    move-object v0, v1

    .line 341
    check-cast v0, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 343
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 344
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 346
    invoke-static {v4, v5}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isGoogleFilterStyle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 349
    :cond_3
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mFilterContactByAccount:Z

    if-nez v0, :cond_4

    .line 353
    :cond_4
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mShowAddPhoneContactWarning:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/widget/HtcExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 354
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 355
    return-void
.end method

.method private createAddPhoneContactWarningPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const v3, 0x7f0a02ec

    .line 389
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x67

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 390
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    .line 392
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    iget-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningFlag:Z

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->setChecked(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method private createDisplayGroupHeader(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    .line 426
    const v1, 0x2090026

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mHeaderSeparator:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mHeaderSeparator:Landroid/view/View;

    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    .local v0, separaterTextView:Landroid/widget/TextView;
    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 432
    return-void
.end method

.method private createDisplayOrderDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 623
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060006

    iget v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    new-instance v3, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayOrderPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const v3, 0x7f0a0251

    .line 413
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 414
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setDisplayOrder()V

    .line 422
    return-void
.end method

.method private createSearchConditionPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const v3, 0x7f0a039c

    .line 364
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    .line 369
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updateSearchConfigurationDisplayText()V

    .line 374
    return-void
.end method

.method private createSearchContactConfigDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 587
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0a0159

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const v4, 0x7f0a015a

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const v4, 0x7f0a0157

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const v4, 0x7f0a0196

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const v4, 0x7f0a015b

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 595
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    .line 598
    new-instance v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$5;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    .line 605
    .local v2, listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    .line 615
    .local v0, donelistener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a039c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    invoke-virtual {v3, v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0150

    invoke-virtual {v3, v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private createSortOrderDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 735
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060007

    iget v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    new-instance v3, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$8;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$8;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createSortOrderPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const v3, 0x7f0a0254

    .line 401
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 402
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    .line 405
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setSortOrder()V

    .line 410
    return-void
.end method

.method private createWithPhonesOnlyPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    const v3, 0x7f0a002e

    const/4 v2, 0x0

    .line 377
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x67

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 378
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    .line 380
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    iget-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneFlag:Z

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->setChecked(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneHeadView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method private doSaveAction()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->doSavePrefs()V

    .line 518
    return-void
.end method

.method private doSavePrefs()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 524
    const-wide/high16 v3, 0x4008

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->saveSearchConfiguration()V

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isPrefsChangeCheck()V

    .line 529
    const-string v3, "content://com.android.contacts/contacts/display/sort/order/update"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 531
    .local v1, updateOrderUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayNameTypeChange:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isSortNameTypeChange:Z

    if-nez v3, :cond_2

    .line 537
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x270f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #values:Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .restart local v2       #values:Landroid/content/ContentValues;
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayNameTypeChange:Z

    if-eqz v3, :cond_3

    .line 543
    const-string v3, "All contact display order"

    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "All contact display order"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 546
    :cond_3
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isSortNameTypeChange:Z

    if-eqz v3, :cond_4

    .line 547
    const-string v3, "All contact sort order"

    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "All contact sort order"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 550
    :cond_4
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v3, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateDBTask;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateDBTask;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/ArrayList;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private findViewsAndSet()V
    .locals 6

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    .line 292
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_list_divider"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, childDividerResId:I
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    .line 303
    if-lez v1, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    new-instance v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    iput-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    .line 308
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setTitleBar()V

    .line 310
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 311
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 312
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 313
    return-void
.end method

.method private initHeaderView()V
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 317
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createWithPhonesOnlyPreferenceView(Landroid/view/LayoutInflater;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSortOrderPreferenceView(Landroid/view/LayoutInflater;)V

    .line 319
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createDisplayOrderPreferenceView(Landroid/view/LayoutInflater;)V

    .line 320
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createDisplayGroupHeader(Landroid/view/LayoutInflater;)V

    .line 322
    const-wide/high16 v1, 0x4008

    invoke-static {v1, v2}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSearchConditionPreferenceView(Landroid/view/LayoutInflater;)V

    .line 325
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createAddPhoneContactWarningPreferenceView(Landroid/view/LayoutInflater;)V

    .line 326
    return-void
.end method

.method private isPrefsChangeCheck()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 478
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "Only contacts with phone number"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "Only contacts with phone number"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    :cond_1
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayOnlyPhoneChange:Z

    .line 483
    const-string v0, "Only contacts with phone number"

    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V

    .line 485
    :cond_2
    const-string v0, "show_add_phone_type_account_warning"

    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V

    .line 486
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact sort order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact sort order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    :cond_4
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isSortNameTypeChange:Z

    .line 491
    const-string v3, "All contact sort order"

    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V

    .line 494
    :cond_5
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact display order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact display order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 498
    :cond_7
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayNameTypeChange:Z

    .line 499
    const-string v0, "All contact display order"

    iget v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    if-ne v3, v1, :cond_a

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V

    .line 502
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 491
    goto :goto_0

    :cond_a
    move v1, v2

    .line 499
    goto :goto_1
.end method

.method private loadPrefs()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "Only contacts with phone number"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhoneFlag:Z

    .line 266
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_add_phone_type_account_warning"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningFlag:Z

    .line 267
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact sort order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    .line 269
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "All contact display order"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    .line 272
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Display contacts filter by account"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mFilterContactByAccount:Z

    .line 274
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setSearchConfiguration()V

    .line 276
    return-void

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    :cond_1
    move v1, v2

    .line 269
    goto :goto_1
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

    .line 938
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 939
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 940
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 941
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 942
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mManagedDialog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private updatePrefs(Ljava/lang/String;Z)V
    .locals 2
    .parameter "prefsName"
    .parameter "mBoolean"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    return-void
.end method


# virtual methods
.method public isAllChildChecked(I)Z
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 1691
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChildrenCount(I)I

    move-result v2

    .line 1693
    .local v2, childrenCount:I
    const/4 v0, 0x0

    .line 1694
    .local v0, checkCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1695
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v4, p1, v3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1696
    .local v1, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    if-eqz v1, :cond_0

    .line 1697
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1694
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1700
    .end local v1           #child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    :cond_1
    if-nez v0, :cond_2

    .line 1701
    const/4 v4, 0x0

    .line 1703
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1651
    const v4, 0x1020001

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1653
    .local v2, checkbox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v4, p3, p4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1655
    .local v3, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getAccountSet()Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    move-result-object v1

    .line 1656
    .local v1, accountSet:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    invoke-virtual {v1, p3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1658
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    if-eqz v3, :cond_0

    .line 1659
    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 1660
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->putVisible(Z)V

    .line 1661
    iget-boolean v4, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    invoke-virtual {p0, p3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isAllChildChecked(I)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1662
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isAllChildChecked(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    .line 1663
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1671
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onContentChanged()V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setContentView(I)V

    .line 228
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 229
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->resolver:Landroid/content/ContentResolver;

    .line 230
    new-instance v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mQueryHandler:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;

    .line 233
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->loadPrefs()V

    .line 235
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->findViewsAndSet()V

    .line 237
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->initHeaderView()V

    .line 239
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setListeners()V

    .line 240
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 575
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 560
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSortOrderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 562
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createDisplayOrderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 564
    :sswitch_2
    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, displayStr:Ljava/lang/String;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 567
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 568
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1e61 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mManagedDialog:Ljava/util/ArrayList;

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

    .line 257
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 261
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onDestroy()V

    .line 262
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 1709
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 1715
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->onResume()V

    .line 245
    const-string v0, "content://com.android.contacts/contacts/display/sort/order/query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 247
    .local v3, queryOrderUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mQueryHandler:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;

    const/16 v1, 0x5dc

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->addHeaderView()V

    .line 249
    return-void
.end method

.method protected saveSearchConfiguration()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 714
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 715
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "search_config"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 717
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 718
    .local v1, values:Landroid/content/ContentValues;
    const-string v5, "number"

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    const-string v5, "email"

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const-string v5, "company"

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v6, 0x2

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string v5, "group"

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v6, 0x3

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v2, "domain"

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v6, 0x4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_4

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 724
    return-void

    :cond_0
    move v2, v4

    .line 718
    goto :goto_0

    :cond_1
    move v2, v4

    .line 719
    goto :goto_1

    :cond_2
    move v2, v4

    .line 720
    goto :goto_2

    :cond_3
    move v2, v4

    .line 721
    goto :goto_3

    :cond_4
    move v3, v4

    .line 722
    goto :goto_4
.end method

.method public setAllChildToggle(Landroid/view/View;IZ)V
    .locals 4
    .parameter "view"
    .parameter "groupPosition"
    .parameter "isChecked"

    .prologue
    .line 1675
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v3, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChildrenCount(I)I

    move-result v1

    .line 1676
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1677
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v3, p2, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1679
    .local v0, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->putVisible(Z)V

    .line 1676
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1687
    .end local v0           #child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1688
    return-void
.end method

.method protected setDisplayOrder()V
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0252

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 584
    return-void

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0253

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$2;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$3;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 474
    return-void
.end method

.method protected setResultExtra()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DISPLAY_VIEW_OPTION_FLAG"

    iget-boolean v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayOnlyPhoneChange:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const-string v1, "ALL_CONTACT_DISPLAY_NAME_ORDER"

    iget-boolean v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isDisplayNameTypeChange:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const-string v1, "ALL_CONTACT_SORT_NAME_ORDER"

    iget-boolean v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isSortNameTypeChange:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setResult(ILandroid/content/Intent;)V

    .line 199
    return-void
.end method

.method protected setSearchConfiguration()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 646
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 647
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "search_config"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->resolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 649
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 651
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v7

    :goto_0
    aput-boolean v0, v2, v3

    .line 653
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    :goto_1
    aput-boolean v0, v2, v3

    .line 654
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x2

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    :goto_2
    aput-boolean v0, v2, v3

    .line 655
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x3

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v7

    :goto_3
    aput-boolean v0, v2, v3

    .line 656
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x4

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v7

    :goto_4
    aput-boolean v0, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_1
    const/4 v6, 0x0

    .line 663
    return-void

    :cond_2
    move v0, v8

    .line 652
    goto :goto_0

    :cond_3
    move v0, v8

    .line 653
    goto :goto_1

    :cond_4
    move v0, v8

    .line 654
    goto :goto_2

    :cond_5
    move v0, v8

    .line 655
    goto :goto_3

    :cond_6
    move v0, v8

    .line 656
    goto :goto_4

    .line 659
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected setSortOrder()V
    .locals 4

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortOrderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0255

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 732
    return-void

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0256

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 285
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 286
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 287
    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 288
    return-void
.end method

.method protected updateSearchConfigurationDisplayText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 669
    .local v0, appendInterval:Z
    const v2, 0x7f0a00d2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const/4 v0, 0x1

    .line 672
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 673
    if-eqz v0, :cond_0

    .line 674
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_0
    const v2, 0x7f0a0159

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const/4 v0, 0x1

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    .line 680
    if-eqz v0, :cond_2

    .line 681
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_2
    const v2, 0x7f0a015a

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const/4 v0, 0x1

    .line 686
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5

    .line 687
    if-eqz v0, :cond_4

    .line 688
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_4
    const v2, 0x7f0a0157

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const/4 v0, 0x1

    .line 693
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_7

    .line 694
    if-eqz v0, :cond_6

    .line 695
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_6
    const v2, 0x7f0a0196

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/4 v0, 0x1

    .line 700
    :cond_7
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_9

    .line 701
    if-eqz v0, :cond_8

    .line 702
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_8
    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const/4 v0, 0x1

    .line 708
    :cond_9
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 711
    return-void
.end method
