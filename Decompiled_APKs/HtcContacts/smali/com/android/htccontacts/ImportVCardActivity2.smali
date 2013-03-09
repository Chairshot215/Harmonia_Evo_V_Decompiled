.class public Lcom/android/htccontacts/ImportVCardActivity2;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;,
        Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;,
        Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;,
        Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;,
        Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;,
        Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;,
        Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;,
        Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;,
        Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;
    }
.end annotation


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final DIAGLOG_REPLACE_OR_NEW:I = 0x0

.field private static final ENTRY_SOURCE_ANDROID_CUSTOM:I = 0x1

.field private static final ENTRY_SOURCE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImportVCardActivity2"


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypeAndNames:Lcom/htc/widget/HtcSpinner;

.field private mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

.field private mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

.field private mCONTACT_INFO_COMPLETED:Z

.field mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsDirty:Z

.field private mNewContactListener:Landroid/content/DialogInterface$OnClickListener;

.field private mReplaceContactListener:Landroid/content/DialogInterface$OnClickListener;

.field mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAccountTypeAndName:I

.field private mSeparatorHeader:Landroid/view/View;

.field mToastForMaxItems:Landroid/widget/Toast;

.field private mVCardEntry:Lcom/android/vcard/VCardEntry;

.field mVCardParser:Lcom/android/vcard/VCardParser;

.field private mVcard:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCONTACT_INFO_COMPLETED:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    .line 126
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVcard:[B

    .line 127
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    .line 128
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 132
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    .line 136
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    .line 139
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity2$1;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity2$4;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mReplaceContactListener:Landroid/content/DialogInterface$OnClickListener;

    .line 340
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity2$5;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mNewContactListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1886
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ImportVCardActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/ImportVCardActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->removeUnselectedItemsFromVCardEntry()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ImportVCardActivity2;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->setAccountTypeAndNameItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ImportVCardActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->setCurrentAccountSource()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ImportVCardActivity2;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2;->checkMaxAllowedItems(Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ImportVCardActivity2;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVcard:[B

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ImportVCardActivity2;[BLcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/ImportVCardActivity2;->doActuallyReadOneVCard([BLcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/ImportVCardActivity2;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ImportVCardActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCONTACT_INFO_COMPLETED:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/ImportVCardActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCONTACT_INFO_COMPLETED:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->dataChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->doSave()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ImportVCardActivity2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/htccontacts/ImportVCardActivity2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private addSeparatorHeader(I)V
    .locals 6
    .parameter "labelResId"

    .prologue
    const/4 v5, 0x0

    .line 1827
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1828
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x2090021

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    .line 1829
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    sget-object v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1841
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1842
    .local v1, separaterTextView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1843
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1844
    return-void
.end method

.method private buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;
    .locals 4
    .parameter "kind"
    .parameter "type"
    .parameter "lowerCase"

    .prologue
    const/4 v2, 0x0

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, rtn:Ljava/lang/String;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 663
    invoke-static {p1, p2}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    .line 664
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    if-nez v0, :cond_1

    .line 673
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_0
    :goto_0
    return-object v2

    .line 667
    .restart local v0       #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_1
    iget v3, v0, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    if-eqz v1, :cond_0

    .line 673
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method private buildAndroidCustomPropertyEntries(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter "mimetype"
    .parameter "label"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1297
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1323
    :cond_0
    return-void

    .line 1300
    :cond_1
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1301
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, custom_mimetype:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1300
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1306
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 1308
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1310
    .local v3, sData:Ljava/lang/String;
    move-object v4, p3

    .line 1312
    .local v4, sLabel:Ljava/lang/String;
    new-instance v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v5}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1313
    .local v5, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iput-object v4, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1314
    iput-object v3, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1315
    const-wide/16 v6, 0x1

    iput-wide v6, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1316
    iput-object p2, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1317
    iput v2, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1318
    iput p4, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1319
    if-eqz v5, :cond_2

    .line 1320
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-object v1

    .line 680
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 681
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildEntries()V
    .locals 26

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSeparatorHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 517
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    if-eqz v1, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080700

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 524
    const v1, 0x7f0a01b5

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->addSeparatorHeader(I)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->newAccountTypeAndNamesEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildPhoneEntries()Ljava/util/ArrayList;

    move-result-object v21

    .line 530
    .local v21, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 532
    .local v11, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildMailEntries()Ljava/util/ArrayList;

    move-result-object v17

    .line 537
    .local v17, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 538
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 539
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildPostalEntries()Ljava/util/ArrayList;

    move-result-object v24

    .line 544
    .local v24, postalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 545
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 546
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 550
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildImEntries()Ljava/util/ArrayList;

    move-result-object v15

    .line 552
    .local v15, imEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildNotesEntries()Ljava/util/ArrayList;

    move-result-object v19

    .line 554
    .local v19, noteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildOrganizationEntries()Ljava/util/ArrayList;

    move-result-object v20

    .line 556
    .local v20, organizationEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildNicknameEntries()Ljava/util/ArrayList;

    move-result-object v18

    .line 558
    .local v18, nicknameEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildWebsiteEntries()Ljava/util/ArrayList;

    move-result-object v25

    .line 560
    .local v25, websiteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildEventEntries()Ljava/util/ArrayList;

    move-result-object v12

    .line 562
    .local v12, eventEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildPhotoEntries()Ljava/util/ArrayList;

    move-result-object v22

    .line 564
    .local v22, photoEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_7
    if-eqz v25, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 572
    :cond_b
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 573
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 574
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 578
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 579
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 580
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 584
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_d
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 585
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 586
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 589
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_e
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 590
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 591
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 594
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_f
    if-eqz v25, :cond_10

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 595
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 596
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 599
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 600
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 601
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 605
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_11
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 606
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 607
    .restart local v11       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 612
    .end local v11           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_12
    const/4 v7, 0x0

    .line 613
    .local v7, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v1, :cond_14

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v23

    .line 615
    .local v23, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v23, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 616
    const/16 v16, 0x0

    .line 617
    .local v16, item:Lcom/android/vcard/VCardEntry$PhotoData;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_13

    .line 618
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    check-cast v16, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 619
    .restart local v16       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 620
    const-string v1, "ImportVCardActivity2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location of first non null photo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_13
    if-eqz v16, :cond_14

    .line 626
    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 627
    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 636
    .end local v13           #i:I
    .end local v16           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .end local v23           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v1, 0x7f0a02b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity2;->hideLinkView()V

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    const-string v2, " "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_15
    const-string v1, "ImportVCardActivity2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of mSections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void

    .line 617
    .restart local v13       #i:I
    .restart local v16       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .restart local v23       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 630
    :cond_17
    const-string v1, "ImportVCardActivity2"

    const-string v2, "item.photoBytes is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private buildEventEntries()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return-object v16

    .line 1719
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v7

    .line 1720
    .local v7, bDay:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v19

    .line 1723
    .local v19, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v21, "com.htc.android.pcsc"

    const/16 v22, 0x0

    const-string v23, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v10

    .line 1730
    .local v10, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v10, :cond_2

    .line 1731
    const-string v21, "ImportVCardActivity2"

    const-string v22, "No DataKind for Birthday, vnd.android.cursor.item/contact_event"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_2
    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v10, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;

    move-result-object v18

    .line 1736
    .local v18, sLabel:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1737
    .local v12, entryValues:Landroid/content/ContentValues;
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 1741
    .local v17, sData:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/util/ContactsUtils;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    .line 1742
    .local v8, cal:Ljava/util/Calendar;
    if-eqz v8, :cond_3

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/htccontacts/util/ContactsUtils;->getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 1746
    new-instance v20, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1747
    .local v20, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1748
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1749
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1750
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 1751
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1752
    const-string v21, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1753
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1755
    if-eqz v20, :cond_3

    .line 1756
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    .end local v8           #cal:Ljava/util/Calendar;
    .end local v10           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v12           #entryValues:Landroid/content/ContentValues;
    .end local v17           #sData:Ljava/lang/String;
    .end local v18           #sLabel:Ljava/lang/String;
    .end local v19           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v20           #viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_3
    const/4 v5, 0x0

    .line 1764
    .local v5, aDay:Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1765
    .local v4, TYPE_ANNIVERSARY_STRING:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v6

    .line 1766
    .local v6, androidCustomPropertyList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$AndroidCustomData;>;"
    const/4 v13, 0x0

    .line 1767
    .local v13, idx:I
    if-eqz v6, :cond_6

    .line 1768
    const/4 v13, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_6

    .line 1769
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-virtual/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->getDataList()Ljava/util/List;

    move-result-object v14

    .line 1770
    .local v14, ls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1771
    .local v15, mimetype:Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1772
    .local v9, data:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1773
    .local v11, datatype:Ljava/lang/String;
    if-eqz v15, :cond_4

    if-eqz v9, :cond_4

    if-nez v11, :cond_5

    .line 1768
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1777
    :cond_5
    const-string v21, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1778
    move-object v5, v9

    .line 1785
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #datatype:Ljava/lang/String;
    .end local v14           #ls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #mimetype:Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_0

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v19

    .line 1787
    .restart local v19       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v21, "com.htc.android.pcsc"

    const/16 v22, 0x0

    const-string v23, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v10

    .line 1793
    .restart local v10       #datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v10, :cond_7

    .line 1794
    const-string v21, "ImportVCardActivity2"

    const-string v22, "No DataKind for Annivesary, vnd.android.cursor.item/contact_event"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_7
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v10, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;

    move-result-object v18

    .line 1799
    .restart local v18       #sLabel:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1800
    .restart local v12       #entryValues:Landroid/content/ContentValues;
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 1804
    .restart local v17       #sData:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/util/ContactsUtils;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    .line 1805
    .restart local v8       #cal:Ljava/util/Calendar;
    if-eqz v8, :cond_0

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/htccontacts/util/ContactsUtils;->getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 1809
    new-instance v20, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1810
    .restart local v20       #viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1811
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1812
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1813
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 1814
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1815
    const-string v21, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1816
    move-object/from16 v0, v20

    iput v13, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1818
    if-eqz v20, :cond_0

    .line 1819
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildImEntries()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v12, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1168
    :cond_0
    return-object v12

    .line 1122
    :cond_1
    const/4 v11, 0x0

    .local v11, idx:I
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardEntry$ImData;

    .line 1126
    .local v8, data:Lcom/android/vcard/VCardEntry$ImData;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v13

    .line 1127
    .local v13, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v0, "com.htc.android.pcsc"

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v13, v0, v2, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v9

    .line 1134
    .local v9, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v9, :cond_3

    .line 1122
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1139
    :cond_3
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getType()I

    move-result v0

    invoke-direct {p0, v9, v0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;

    move-result-object v5

    .line 1141
    .local v5, sLabel:Ljava/lang/String;
    const/4 v0, -0x2

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1142
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 1143
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v5

    .line 1149
    :cond_4
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1150
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1153
    :cond_5
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    .local v10, entryValues:Landroid/content/ContentValues;
    const-string v0, "data5"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    const-string v0, "data6"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v0, "data1"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-direct {p0, v9, v10}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    .line 1160
    .local v6, sData:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/htccontacts/ImportVCardActivity2;->newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v14

    .line 1161
    .local v14, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v0, "vnd.android.cursor.item/im"

    iput-object v0, v14, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1162
    iput v11, v14, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1163
    const/4 v0, 0x4

    iput v0, v14, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1164
    if-eqz v14, :cond_2

    .line 1165
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1145
    .end local v6           #sData:Ljava/lang/String;
    .end local v10           #entryValues:Landroid/content/ContentValues;
    .end local v14           #viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_6
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5           #sLabel:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #sLabel:Ljava/lang/String;
    goto :goto_2
.end method

.method private buildMailEntries()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1068
    :cond_0
    return-object v15

    .line 1041
    :cond_1
    const/4 v14, 0x0

    .local v14, idx:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_0

    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$EmailData;

    .line 1044
    .local v11, data:Lcom/android/vcard/VCardEntry$EmailData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v16

    .line 1045
    .local v16, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v1, "com.htc.android.pcsc"

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 1050
    .local v12, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v12, :cond_3

    .line 1041
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1055
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1056
    .local v13, entryValues:Landroid/content/ContentValues;
    const-string v1, "data1"

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v8

    .line 1060
    .local v8, sData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const v6, 0x2080a9c

    const v1, 0x7f0a00ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$EmailData;->isPrimary()Z

    move-result v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/htccontacts/ImportVCardActivity2;->newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v17

    .line 1061
    .local v17, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1063
    const/16 v1, 0xe

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1064
    if-eqz v17, :cond_2

    .line 1065
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildNicknameEntries()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x1a

    .line 1252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-nez v9, :cond_0

    .line 1292
    :goto_0
    return-object v4

    .line 1257
    :cond_0
    const v9, 0x7f0a0058

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1258
    .local v6, sLabel:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1259
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 1260
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NicknameData;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, data:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v7

    .line 1263
    .local v7, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v9, "com.htc.android.pcsc"

    const/4 v10, 0x0

    const-string v11, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 1271
    .local v1, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v1, :cond_2

    .line 1259
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1274
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    .local v2, entryValues:Landroid/content/ContentValues;
    const-string v9, "data1"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 1278
    .local v5, sData:Ljava/lang/String;
    new-instance v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1279
    .local v8, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iput-object v6, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1280
    iput-object v5, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1281
    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1282
    const-string v9, "vnd.android.cursor.item/nickname"

    iput-object v9, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1283
    iput v3, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1284
    iput v12, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1285
    if-eqz v8, :cond_1

    .line 1286
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1291
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v2           #entryValues:Landroid/content/ContentValues;
    .end local v3           #idx:I
    .end local v5           #sData:Ljava/lang/String;
    .end local v7           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v8           #viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_3
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, v4, v9, v6, v12}, Lcom/android/htccontacts/ImportVCardActivity2;->buildAndroidCustomPropertyEntries(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private buildNotesEntries()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1172
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v11, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1208
    :cond_0
    return-object v11

    .line 1177
    :cond_1
    const/4 v10, 0x0

    .local v10, idx:I
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v6

    .line 1180
    .local v6, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v12

    .line 1181
    .local v12, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v0, "com.htc.android.pcsc"

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v12, v0, v3, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v7

    .line 1188
    .local v7, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v7, :cond_3

    .line 1177
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1191
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    .local v8, entryValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-direct {p0, v7, v8}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, sData:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1196
    .local v9, filterText:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ImportVCardActivity2;->newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v13

    .line 1201
    .local v13, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v0, "vnd.android.cursor.item/note"

    iput-object v0, v13, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1202
    iput v10, v13, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1203
    const/4 v0, 0x6

    iput v0, v13, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1204
    if-eqz v13, :cond_2

    .line 1205
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildOrganizationEntries()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1248
    :cond_0
    return-object v4

    .line 1217
    :cond_1
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1218
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1221
    .local v0, data:Lcom/android/vcard/VCardEntry$OrganizationData;
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 1222
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v8, "com.htc.android.pcsc"

    const/4 v9, 0x0

    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 1229
    .local v1, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v1, :cond_3

    .line 1217
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1233
    :cond_3
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v5

    .line 1234
    .local v5, sData:Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1235
    new-instance v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v7}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1236
    .local v7, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const v8, 0x7f0a01b7

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v2, detailBuilder:Ljava/lang/StringBuilder;
    if-nez v5, :cond_4

    const-string v5, ""

    .end local v5           #sData:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1240
    const/16 v8, 0x8

    iput v8, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1241
    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1242
    const-string v8, "vnd.android.cursor.item/organization"

    iput-object v8, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1243
    iput v3, v7, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1244
    if-eqz v7, :cond_2

    .line 1245
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1233
    .end local v2           #detailBuilder:Ljava/lang/StringBuilder;
    .end local v7           #viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_5
    const-string v5, ""

    goto :goto_2

    .line 1234
    .restart local v5       #sData:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3
.end method

.method private buildPhoneEntries()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 995
    :cond_0
    return-object v17

    .line 966
    :cond_1
    const/16 v16, 0x0

    .local v16, idx:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 968
    .local v13, data:Lcom/android/vcard/VCardEntry$PhoneData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v18

    .line 969
    .local v18, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v2, "com.htc.android.pcsc"

    const/4 v3, 0x0

    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v14

    .line 973
    .local v14, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v14, :cond_3

    .line 966
    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 977
    :cond_3
    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3}, Lcom/android/htccontacts/ImportVCardActivity2;->buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;

    move-result-object v4

    .line 978
    .local v4, sLabel:Ljava/lang/String;
    if-nez v4, :cond_4

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 979
    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 982
    :cond_4
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 983
    .local v15, entryValues:Landroid/content/ContentValues;
    const-string v2, "data1"

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 987
    .local v5, sData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v9

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary()Z

    move-result v10

    const-wide/16 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/htccontacts/ImportVCardActivity2;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZJ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v19

    .line 988
    .local v19, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 989
    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 990
    const/16 v2, 0xd

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 991
    if-eqz v19, :cond_2

    .line 992
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildPhotoEntries()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1019
    :cond_0
    return-object v3

    .line 1004
    :cond_1
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1005
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 1006
    .local v0, data:Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1007
    :cond_2
    const-string v5, "ImportVCardActivity2"

    const-string v6, "PhotoData is null or PhotoData.photoBytes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_4
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1011
    .local v2, photo:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->newPhotoEntry(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v4

    .line 1012
    .local v4, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v5, "vnd.android.cursor.item/photo"

    iput-object v5, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1013
    iput v1, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1014
    const/16 v5, 0xa

    iput v5, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1015
    if-eqz v4, :cond_3

    .line 1016
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildPostalEntries()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    return-object v13

    .line 1077
    :cond_1
    const/4 v12, 0x0

    .local v12, idx:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$PostalData;

    .line 1080
    .local v9, data:Lcom/android/vcard/VCardEntry$PostalData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v14

    .line 1081
    .local v14, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v1, "com.htc.android.pcsc"

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v14, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v10

    .line 1088
    .local v10, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v10, :cond_3

    .line 1077
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1093
    :cond_3
    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getType()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->buildActionString(Lcom/android/htccontacts/model/DataKind;IZ)Ljava/lang/String;

    move-result-object v6

    .line 1095
    .local v6, sLabel:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1096
    .local v11, entryValues:Landroid/content/ContentValues;
    const-string v1, "data5"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getPobox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const v1, 0x7f0a0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v15

    .line 1098
    .local v15, vcardType:I
    const-string v1, "data1"

    invoke-virtual {v9, v15}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v1, "data4"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v1, "data7"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v1, "data8"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v1, "data9"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v1, "data10"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v7

    .line 1105
    .local v7, sData:Ljava/lang/String;
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const v5, 0x20801cb

    const/4 v8, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/htccontacts/ImportVCardActivity2;->newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v16

    .line 1106
    .local v16, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, v16

    iput v12, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1108
    const/16 v1, 0xf

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1109
    if-eqz v16, :cond_2

    .line 1110
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private buildWebsiteEntries()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1364
    :cond_0
    return-object v4

    .line 1332
    :cond_1
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1333
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, data:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v7

    .line 1336
    .local v7, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v9, "com.htc.android.pcsc"

    const/4 v10, 0x0

    const-string v11, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 1343
    .local v1, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v1, :cond_3

    .line 1332
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1346
    :cond_3
    const v9, 0x7f0a005a

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1348
    .local v6, sLabel:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1349
    .local v2, entryValues:Landroid/content/ContentValues;
    const-string v9, "data1"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 1352
    .local v5, sData:Ljava/lang/String;
    new-instance v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1353
    .local v8, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iput-object v6, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1354
    iput-object v5, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1355
    const/16 v9, 0x9

    iput v9, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1356
    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1357
    const-string v9, "vnd.android.cursor.item/website"

    iput-object v9, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1358
    iput v3, v8, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    .line 1360
    if-eqz v8, :cond_2

    .line 1361
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkAllUnSelectedOrNot()V
    .locals 5

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getCount()I

    move-result v2

    .line 417
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 418
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 419
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget-boolean v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 427
    .end local v0           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :goto_1
    return-void

    .line 417
    .restart local v0       #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private checkMaxAllowedItems(Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 23
    .parameter "checkedEntry"

    .prologue
    .line 2073
    const-string v18, "ImportVCardActivity2"

    const-string v19, "checkMaxAllowedItems()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2075
    .local v3, allAllowNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v9, 0x0

    .line 2076
    .local v9, isAnyMaxItemsReached:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getCount()I

    move-result v15

    .line 2077
    .local v15, num:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v15, :cond_5

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 2079
    .local v4, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget-boolean v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2080
    if-eqz p1, :cond_1

    .line 2081
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 2077
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2086
    :cond_1
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 2087
    .local v13, kindAllowNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v13, :cond_2

    .line 2088
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #kindAllowNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2089
    .restart local v13       #kindAllowNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_2
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2093
    .local v16, typeAllowNumber:Ljava/lang/Integer;
    if-nez v16, :cond_3

    .line 2094
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v18, v0

    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getMaxAllowedNumber(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 2095
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 2101
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 2104
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 2105
    const/16 v18, -0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 2106
    const/4 v9, 0x1

    .line 2107
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    .line 2108
    iget-object v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->view:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 2109
    iget-object v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f070014

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;

    .line 2110
    .local v10, item:Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
    iget-object v0, v10, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v18, v0

    iget-boolean v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 2114
    .end local v10           #item:Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
    :cond_4
    iget v0, v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2119
    .end local v4           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .end local v13           #kindAllowNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v16           #typeAllowNumber:Ljava/lang/Integer;
    :cond_5
    if-eqz v9, :cond_a

    .line 2120
    const v18, 0x7f0a0407

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/model/AccountWithDataSet;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getAccountTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2121
    .local v5, errmsg:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 2122
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 2123
    .local v11, key1:Ljava/lang/Integer;
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 2124
    .local v17, typeAllowNumber:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 2125
    .local v12, key2:Ljava/lang/Integer;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2126
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getMaxAllowedNumberString(II)Ljava/lang/String;

    move-result-object v14

    .line 2127
    .local v14, msg:Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 2128
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2134
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #key1:Ljava/lang/Integer;
    .end local v12           #key2:Ljava/lang/Integer;
    .end local v14           #msg:Ljava/lang/String;
    .end local v17           #typeAllowNumber:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getMaxAllowedNumberString(II)Ljava/lang/String;

    move-result-object v14

    .line 2135
    .restart local v14       #msg:Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 2136
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2139
    .end local v14           #msg:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 2140
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 2149
    .end local v5           #errmsg:Ljava/lang/String;
    :cond_a
    :goto_3
    return v9

    .line 2144
    .restart local v5       #errmsg:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity2;->mToastForMaxItems:Landroid/widget/Toast;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method private dataChanged()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "ImportVCardActivity2"

    const-string v1, "dataChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->buildEntries()V

    .line 502
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->checkMaxAllowedItems(Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    .line 510
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->checkAllUnSelectedOrNot()V

    .line 511
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private doActuallyReadOneVCard([BLcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z
    .locals 8
    .parameter "mData"
    .parameter "accountDataSet"
    .parameter "charset"
    .parameter "detector"

    .prologue
    const/4 v7, 0x0

    .line 1862
    const-string v0, "ImportVCardActivity2"

    const-string v1, "start doActuallyReadOneVCard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v4

    .line 1866
    .local v4, vcardType:I
    if-eqz p3, :cond_0

    .line 1867
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {v3, v4, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 1872
    .local v3, interpreter:Lcom/android/vcard/VCardEntryConstructor;
    :goto_0
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    invoke-virtual {v3, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 1876
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ImportVCardActivity2;->readOneVCardFile([BLjava/lang/String;Lcom/android/vcard/VCardInterpreter;IZ)Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 1883
    :goto_1
    return v0

    .line 1869
    .end local v3           #interpreter:Lcom/android/vcard/VCardEntryConstructor;
    :cond_0
    const-string p3, "ISO-8859-1"

    .line 1870
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {v3, v4, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .restart local v3       #interpreter:Lcom/android/vcard/VCardEntryConstructor;
    goto :goto_0

    .line 1880
    :catch_0
    move-exception v6

    .line 1881
    .local v6, e:Lcom/android/vcard/exception/VCardNestedException;
    const-string v0, "ImportVCardActivity2"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    .end local v6           #e:Lcom/android/vcard/exception/VCardNestedException;
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private doSave()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 372
    const-string v0, "ImportVCardActivity2"

    const-string v2, "mVCardEntry is null while calling doSave()..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->finish()V

    .line 413
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 378
    .local v6, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0, v6}, Lcom/android/vcard/VCardEntry;->setAccount(Landroid/accounts/Account;)V

    .line 380
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->removeUnselectedItemsFromVCardEntry()V

    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 383
    .local v9, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    .line 385
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->setResult(ILandroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->finish()V

    goto :goto_0

    .line 388
    .end local v9           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    sget-object v1, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$StructuredName;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 389
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and account_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 393
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 401
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->showDialog(I)V

    .line 403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 394
    :catch_0
    move-exception v8

    .line 395
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "ImportVCardActivity2"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 405
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->removeUnselectedItemsFromVCardEntry()V

    .line 406
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 407
    .restart local v9       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    .line 409
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->setResult(ILandroid/content/Intent;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->finish()V

    goto/16 :goto_0
.end method

.method public static getAccountTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "acc_type"

    .prologue
    const v2, 0x7f0a00f8

    .line 2285
    const/4 v0, 0x0

    .line 2287
    .local v0, rtn:Ljava/lang/String;
    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2288
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2309
    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 2312
    .end local p1
    :goto_1
    return-object p1

    .line 2289
    .restart local p1
    :cond_1
    const-string v1, "com.htc.android.myphonebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2290
    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2291
    :cond_2
    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2292
    const v1, 0x7f0a00fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2293
    :cond_3
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2294
    const v1, 0x7f0a00fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2295
    :cond_4
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2296
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2297
    :cond_5
    const-string v1, "com.facebook.auth.login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2299
    :cond_6
    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2300
    const v1, 0x7f0a00f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2301
    :cond_7
    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2302
    const v1, 0x7f0a00fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2303
    :cond_8
    const-string v1, "com.htc.htctwitter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2304
    const v1, 0x7f0a00fa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2305
    :cond_9
    const-string v1, "com.skype.contacts.sync"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2306
    const v1, 0x7f0a00fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-object p1, v0

    .line 2312
    goto/16 :goto_1
.end method

.method private getDrawableIdOfPhoneType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 685
    const v0, 0x20801cc

    .line 687
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 723
    :pswitch_0
    const v0, 0x20801cc

    .line 727
    :goto_0
    return v0

    .line 689
    :pswitch_1
    const v0, 0x20801cc

    .line 690
    goto :goto_0

    .line 693
    :pswitch_2
    const v0, 0x20801c9

    .line 694
    goto :goto_0

    .line 699
    :pswitch_3
    const v0, 0x20801d3

    .line 700
    goto :goto_0

    .line 702
    :pswitch_4
    const v0, 0x20801cd

    .line 703
    goto :goto_0

    .line 706
    :pswitch_5
    const v0, 0x20801c5

    .line 707
    goto :goto_0

    .line 709
    :pswitch_6
    const v0, 0x20801ce

    .line 710
    goto :goto_0

    .line 712
    :pswitch_7
    const v0, 0x20801c6

    .line 713
    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getMaxAllowedNumber(II)I
    .locals 6
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 2230
    const/4 v4, -0x1

    .line 2231
    .local v4, rtn:I
    const/4 v3, 0x0

    .line 2232
    .local v3, mimetype:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2265
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    invoke-virtual {v5, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 2266
    .local v0, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v0, :cond_3

    .line 2267
    iget-object v5, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 2268
    iget v4, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 2281
    :cond_0
    :goto_1
    return v4

    .line 2234
    .end local v0           #datakind:Lcom/android/htccontacts/model/DataKind;
    :sswitch_0
    const-string v3, "vnd.android.cursor.item/phone_v2"

    .line 2235
    goto :goto_0

    .line 2237
    :sswitch_1
    const-string v3, "vnd.android.cursor.item/email_v2"

    .line 2238
    goto :goto_0

    .line 2240
    :sswitch_2
    const-string v3, "vnd.android.cursor.item/nickname"

    .line 2241
    goto :goto_0

    .line 2243
    :sswitch_3
    const-string v3, "vnd.android.cursor.item/contact_event"

    .line 2244
    goto :goto_0

    .line 2246
    :sswitch_4
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    .line 2247
    goto :goto_0

    .line 2249
    :sswitch_5
    const-string v3, "vnd.android.cursor.item/im"

    .line 2250
    goto :goto_0

    .line 2252
    :sswitch_6
    const-string v3, "vnd.android.cursor.item/note"

    .line 2253
    goto :goto_0

    .line 2255
    :sswitch_7
    const-string v3, "vnd.android.cursor.item/organization"

    .line 2256
    goto :goto_0

    .line 2258
    :sswitch_8
    const-string v3, "vnd.android.cursor.item/website"

    .line 2259
    goto :goto_0

    .line 2261
    :sswitch_9
    const-string v3, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2270
    .restart local v0       #datakind:Lcom/android/htccontacts/model/DataKind;
    :cond_1
    iget-object v5, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 2271
    .local v1, et:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v5, v1, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v5, p2, :cond_2

    .line 2272
    iget v4, v1, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    .line 2273
    goto :goto_1

    .line 2278
    .end local v1           #et:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v4, -0x2

    goto :goto_1

    .line 2232
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method private getMaxAllowedNumberString(II)Ljava/lang/String;
    .locals 9
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 2153
    const/4 v6, 0x0

    .line 2154
    .local v6, rtn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2155
    .local v4, mimetype:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2195
    :goto_0
    iget-object v7, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    invoke-virtual {v7, v4}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 2196
    .local v0, datakind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x0

    .line 2198
    .local v1, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    const/4 v5, 0x0

    .line 2199
    .local v5, number:I
    if-eqz v0, :cond_0

    .line 2200
    invoke-static {v0, p2}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    .line 2202
    iget-object v7, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 2203
    iget v5, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 2214
    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    .line 2215
    if-nez v6, :cond_4

    .line 2216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2226
    :cond_1
    :goto_2
    return-object v6

    .line 2157
    .end local v0           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v1           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v5           #number:I
    :sswitch_0
    const-string v4, "vnd.android.cursor.item/phone_v2"

    .line 2158
    const v7, 0x7f0a005e

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2159
    goto :goto_0

    .line 2161
    :sswitch_1
    const-string v4, "vnd.android.cursor.item/email_v2"

    .line 2162
    const v7, 0x7f0a005f

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2163
    goto :goto_0

    .line 2165
    :sswitch_2
    const-string v4, "vnd.android.cursor.item/nickname"

    .line 2166
    const v7, 0x7f0a0058

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto :goto_0

    .line 2169
    :sswitch_3
    const-string v4, "vnd.android.cursor.item/contact_event"

    .line 2170
    goto :goto_0

    .line 2172
    :sswitch_4
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    .line 2173
    const v7, 0x7f0a0061

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2174
    goto :goto_0

    .line 2176
    :sswitch_5
    const-string v4, "vnd.android.cursor.item/im"

    .line 2177
    const v7, 0x7f0a0060

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2178
    goto :goto_0

    .line 2180
    :sswitch_6
    const-string v4, "vnd.android.cursor.item/note"

    .line 2181
    const v7, 0x7f0a0156

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2182
    goto :goto_0

    .line 2184
    :sswitch_7
    const-string v4, "vnd.android.cursor.item/organization"

    .line 2185
    const v7, 0x7f0a0059

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2186
    goto/16 :goto_0

    .line 2188
    :sswitch_8
    const-string v4, "vnd.android.cursor.item/website"

    .line 2189
    const v7, 0x7f0a005a

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2190
    goto/16 :goto_0

    .line 2192
    :sswitch_9
    const-string v4, "vnd.android.cursor.item/photo"

    goto/16 :goto_0

    .line 2205
    .restart local v0       #datakind:Lcom/android/htccontacts/model/DataKind;
    .restart local v1       #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    .restart local v5       #number:I
    :cond_2
    iget-object v7, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 2206
    .local v2, et:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v7, v2, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v7, p2, :cond_3

    .line 2207
    iget v5, v2, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    .line 2208
    goto/16 :goto_1

    .line 2218
    .end local v2           #et:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 2221
    :cond_5
    if-eqz v6, :cond_1

    .line 2222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 2155
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method private newAccountTypeAndNamesEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 4
    .parameter "res"

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    const/4 v0, 0x0

    .line 865
    :goto_0
    return-object v0

    .line 842
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 843
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const-string v2, "com.htc.android.pcsc"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 863
    :goto_1
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 864
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    goto :goto_0

    .line 845
    :cond_1
    const-string v2, "com.htc.android.myphonebook"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 846
    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto :goto_1

    .line 847
    :cond_2
    const-string v2, "com.htc.android.mail.eas"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto :goto_1

    .line 849
    :cond_3
    const-string v2, "com.google"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fd

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1

    .line 851
    :cond_4
    const-string v2, "com.htc.socialnetwork.facebook"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00f8

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1

    .line 853
    :cond_5
    const-string v2, "com.htc.socialnetwork.flickr"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1

    .line 855
    :cond_6
    const-string v2, "com.htc.socialnetwork.plurk"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1

    .line 857
    :cond_7
    const-string v2, "com.htc.htctwitter"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1

    .line 860
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "data"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 904
    new-instance v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 905
    .local v3, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    if-eqz p2, :cond_0

    .line 906
    const-string v4, "contact_methods"

    invoke-static {p2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 907
    .local v2, methodsUri:Landroid/net/Uri;
    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 910
    .end local v2           #methodsUri:Landroid/net/Uri;
    :cond_0
    const v4, 0x20801c8

    iput v4, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->leftIconId:I

    .line 912
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    invoke-static {p1, v4, p8, p6}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 913
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p6

    .end local p6
    :cond_1
    iput-object p6, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 918
    iput-object p7, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 919
    if-eqz p9, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text4:Ljava/lang/String;

    .line 920
    iput-wide p3, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 921
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 922
    iput-boolean p9, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isPrimary:Z

    .line 923
    invoke-static {p7}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 924
    .local v1, intent:Landroid/content/Intent;
    iput-object v1, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->intent:Landroid/content/Intent;

    .line 926
    return-object v3

    .line 919
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 3
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "address"
    .parameter "type"

    .prologue
    .line 930
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 932
    .local v0, viewEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->intent:Landroid/content/Intent;

    .line 934
    iput-object p1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 935
    iput p4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->leftIconId:I

    .line 936
    iput-object p5, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 937
    iput-object p6, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 938
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 939
    iput-wide p2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 941
    return-object v0
.end method

.method private newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "label"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 945
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 947
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iput-object p5, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 948
    iput-object p6, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 949
    if-eqz p2, :cond_0

    .line 950
    const-string v2, "contact_methods"

    invoke-static {p2, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 951
    .local v1, methodsUri:Landroid/net/Uri;
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 953
    .end local v1           #methodsUri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 954
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 955
    iput-wide p3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 957
    return-object v0
.end method

.method private newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const/4 v0, 0x0

    .line 831
    :goto_0
    return-object v0

    .line 826
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 827
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    sget-object v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 828
    iput-object p1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 829
    iput-boolean v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 830
    iput-boolean v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    goto :goto_0
.end method

.method private newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 1023
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 1024
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1025
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1026
    iput-object p2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 1027
    iput-object p3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 1028
    iput-wide p4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 1029
    const/4 v2, 0x6

    iput v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 1032
    return-object v0
.end method

.method private newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 7
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    const/high16 v6, 0x1000

    const/4 v4, 0x0

    .line 879
    if-nez p1, :cond_0

    .line 900
    :goto_0
    return-object v4

    .line 883
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 885
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    move-object v1, p2

    .line 887
    .local v1, localLabel:Ljava/lang/String;
    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 888
    iput-object p3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 889
    iput-wide p4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 890
    iput-object p6, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 891
    invoke-direct {p0, p7}, Lcom/android/htccontacts/ImportVCardActivity2;->getDrawableIdOfPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->leftIconId:I

    .line 892
    if-eqz p8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0178

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text4:Ljava/lang/String;

    .line 894
    const-string v3, "tel"

    invoke-static {v3, p3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 895
    .local v2, uriTemp:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->intent:Landroid/content/Intent;

    .line 896
    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 897
    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 898
    iput-boolean p8, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isPrimary:Z

    move-object v4, v0

    .line 900
    goto :goto_0

    .end local v2           #uriTemp:Landroid/net/Uri;
    :cond_1
    move-object v3, v4

    .line 892
    goto :goto_1
.end method

.method private newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZJ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 1
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"
    .parameter "personId"

    .prologue
    .line 869
    if-nez p1, :cond_0

    .line 870
    const/4 v0, 0x0

    .line 874
    :goto_0
    return-object v0

    .line 872
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/android/htccontacts/ImportVCardActivity2;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v0

    .line 874
    .local v0, phoneEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    goto :goto_0
.end method

.method private newPhotoEntry(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    .locals 2
    .parameter "res"
    .parameter "photo"

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 657
    :goto_0
    return-object v0

    .line 651
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;-><init>()V

    .line 652
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const v1, 0x7f0a0218

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 653
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 654
    iput-object p2, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->data:Ljava/lang/Object;

    .line 655
    const-string v1, "vnd.android.cursor.item/photo"

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    goto :goto_0
.end method

.method private pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;
    .locals 10

    .prologue
    const v3, 0x7f0a00f8

    .line 1625
    const/4 v6, 0x0

    .line 1627
    .local v6, adbName:Lcom/htc/widget/HtcAlertDialog;
    new-instance v7, Lcom/android/htccontacts/ImportVCardActivity2$6;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/ImportVCardActivity2$6;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 1638
    .local v7, clPickName:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v8, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1639
    .local v8, dialogContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1642
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 1643
    .local v4, accounts:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    .line 1644
    const-string v2, "com.htc.android.pcsc"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    .line 1643
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1646
    :cond_0
    const-string v2, "com.htc.android.myphonebook"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto :goto_1

    .line 1648
    :cond_1
    const-string v2, "com.htc.android.mail.eas"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto :goto_1

    .line 1650
    :cond_2
    const-string v2, "com.google"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fd

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1652
    :cond_3
    const-string v2, "com.htc.socialnetwork.facebook"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1654
    :cond_4
    const-string v2, "com.facebook.auth.login"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_org-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1656
    :cond_5
    const-string v2, "com.htc.socialnetwork.flickr"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1658
    :cond_6
    const-string v2, "com.htc.socialnetwork.plurk"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1660
    :cond_7
    const-string v2, "com.htc.htctwitter"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1662
    :cond_8
    const-string v2, "com.skype.contacts.sync"

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fb

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1665
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto/16 :goto_1

    .line 1669
    :cond_a
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity2$7;

    const v3, 0x2090007

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ImportVCardActivity2$7;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/view/LayoutInflater;)V

    .line 1686
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 1687
    return-object v6
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2055
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 2061
    .local v1, results:[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_1

    .line 2068
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :goto_0
    return-object v2

    .line 2061
    .restart local v1       #results:[Landroid/content/ContentProviderResult;
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v2, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2063
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 2064
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ImportVCardActivity2"

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2066
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2067
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v3, "ImportVCardActivity2"

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readOneVCardFile([BLjava/lang/String;Lcom/android/vcard/VCardInterpreter;IZ)Z
    .locals 10
    .parameter "data"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "vCardType"
    .parameter "throwNestedException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1915
    const-string v5, "ImportVCardActivity2"

    const-string v8, "start readOneVCardFile()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1920
    .local v4, is:Ljava/io/ByteArrayInputStream;
    new-instance v5, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v5, p4}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    iput-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1923
    :try_start_1
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1924
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1986
    if-eqz v4, :cond_0

    .line 1988
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_0
    :goto_0
    move v5, v6

    .line 2006
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :goto_1
    return v5

    .line 1925
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 1926
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_3
    const-string v5, "ImportVCardActivity2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get VCardVersionException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardVersionException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1928
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 1931
    :goto_2
    :try_start_5
    instance-of v5, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v5, :cond_1

    .line 1933
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 1935
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1938
    :try_start_6
    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 1939
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 1940
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1941
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1986
    if-eqz v4, :cond_0

    .line 1988
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_0

    .line 1989
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1942
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_2
    move-exception v3

    .line 1943
    .local v3, e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_8
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    const-string v6, "vCard with unspported version."

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1986
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 1988
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1986
    :cond_2
    :goto_3
    :try_start_a
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_8

    .line 1993
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v1

    .line 1994
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImportVCardActivity2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException was emitted: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 1996
    goto :goto_1

    .line 1945
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v2

    .line 1946
    .local v2, e1:Lcom/android/vcard/exception/VCardException;
    :try_start_b
    const-string v5, "ImportVCardActivity2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get vCardException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1948
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1951
    :goto_4
    :try_start_d
    instance-of v5, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v5, :cond_3

    .line 1953
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 1955
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1958
    :try_start_e
    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 1959
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 1960
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1961
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_e .. :try_end_e} :catch_6

    .line 1986
    if-eqz v4, :cond_0

    .line 1988
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 1997
    .end local v2           #e1:Lcom/android/vcard/exception/VCardException;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v1

    .line 1998
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    instance-of v5, v1, Lcom/android/vcard/exception/VCardNestedException;

    if-eqz v5, :cond_5

    if-eqz p5, :cond_5

    .line 1999
    check-cast v1, Lcom/android/vcard/exception/VCardNestedException;

    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    throw v1

    .line 1962
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardException;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v3

    .line 1963
    .restart local v3       #e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_10
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    const-string v6, "vCard with unspported version."

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1965
    .end local v2           #e1:Lcom/android/vcard/exception/VCardException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v2

    .line 1966
    .local v2, e1:Ljava/lang/IllegalArgumentException;
    const-string v5, "ImportVCardActivity2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get IllegalArgumentException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1968
    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 1971
    :goto_5
    :try_start_12
    instance-of v5, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v5, :cond_4

    .line 1973
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 1975
    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1978
    :try_start_13
    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 1979
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 1980
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1981
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_13 .. :try_end_13} :catch_9

    .line 1986
    if-eqz v4, :cond_0

    .line 1988
    :try_start_14
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_0

    .line 2002
    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v1

    .line 2003
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    const-string v5, "ImportVCardActivity2"

    const-string v6, "VCardException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 2004
    goto/16 :goto_1

    .line 1982
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v2       #e1:Ljava/lang/IllegalArgumentException;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_9
    move-exception v3

    .line 1983
    .restart local v3       #e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_15
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    const-string v6, "vCard with unspported version."

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :cond_5
    move v5, v7

    .line 2001
    goto/16 :goto_1

    .line 1929
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v5

    goto/16 :goto_2

    .line 1949
    .local v2, e1:Lcom/android/vcard/exception/VCardException;
    :catch_b
    move-exception v5

    goto/16 :goto_4

    .line 1969
    .local v2, e1:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v5

    goto :goto_5

    .line 1989
    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v6

    goto/16 :goto_3
.end method

.method private removeUnselectedItemsFromVCardEntry()V
    .locals 7

    .prologue
    .line 2010
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getCount()I

    move-result v2

    .line 2011
    .local v2, num:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_b

    .line 2012
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 2013
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget-boolean v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    if-nez v3, :cond_0

    .line 2014
    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2015
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2011
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2016
    :cond_1
    const-string v3, "vnd.android.cursor.item/email_v2"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2017
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2018
    :cond_2
    const-string v3, "vnd.android.cursor.item/contact_event"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2019
    iget v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    packed-switch v3, :pswitch_data_0

    .line 2026
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2021
    :pswitch_0
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/vcard/VCardEntry;->setBirthday(Ljava/lang/String;)V

    goto :goto_1

    .line 2029
    :cond_3
    const-string v3, "vnd.android.cursor.item/photo"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2030
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2031
    :cond_4
    const-string v3, "vnd.android.cursor.item/im"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2032
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2033
    :cond_5
    const-string v3, "vnd.android.cursor.item/nickname"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2034
    const-wide/16 v3, 0x0

    iget-wide v5, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 2035
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2036
    :cond_6
    const-wide/16 v3, 0x1

    iget-wide v5, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 2037
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2040
    :cond_7
    const-string v3, "vnd.android.cursor.item/website"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2041
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2042
    :cond_8
    const-string v3, "vnd.android.cursor.item/note"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2043
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2044
    :cond_9
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2045
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2046
    :cond_a
    const-string v3, "vnd.android.cursor.item/organization"

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2047
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->entryIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2051
    .end local v0           #entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_b
    return-void

    .line 2019
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setAccountTypeAndNameItem()V
    .locals 4

    .prologue
    .line 1691
    const-string v1, "com.htc.android.pcsc"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 1710
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->notifyDataSetChanged()V

    .line 1711
    return-void

    .line 1693
    :cond_0
    const-string v1, "com.htc.android.myphonebook"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto :goto_0

    .line 1695
    :cond_1
    const-string v1, "com.htc.android.mail.eas"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1696
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto :goto_0

    .line 1697
    :cond_2
    const-string v1, "com.google"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1698
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fd

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1699
    :cond_3
    const-string v1, "com.htc.socialnetwork.facebook"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1700
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00f8

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1701
    :cond_4
    const-string v1, "com.htc.socialnetwork.flickr"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1702
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1703
    :cond_5
    const-string v1, "com.htc.socialnetwork.plurk"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1704
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1705
    :cond_6
    const-string v1, "com.htc.htctwitter"

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1706
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00fa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1708
    :cond_7
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private setCurrentAccountSource()V
    .locals 6

    .prologue
    .line 2317
    const/4 v0, 0x0

    .line 2318
    .local v0, accountType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2319
    .local v1, dataSet:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 2320
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    .line 2321
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    iget v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 2322
    invoke-virtual {v3, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v2

    .line 2324
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    .line 2325
    return-void
.end method


# virtual methods
.method protected hideLinkView()V
    .locals 3

    .prologue
    .line 473
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 474
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 476
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 479
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 205
    const-string v10, "ImportVCardActivity2"

    const-string v11, "onCreate()..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    .line 209
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v12, v10}, Lcom/android/htccontacts/ImportVCardActivity2;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0, v13}, Lcom/android/htccontacts/ImportVCardActivity2;->requestWindowFeature(I)Z

    .line 212
    const v10, 0x7f030031

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ImportVCardActivity2;->setContentView(I)V

    .line 214
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v8

    .line 215
    .local v8, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v8, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    .line 219
    const-string v11, "com.htc.android.pcsc"

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v10, v10, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v13, :cond_0

    .line 220
    const-string v10, "ImportVCardActivity2"

    const-string v11, "The first account type is not Phone, move it to the first position..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 222
    const-string v11, "com.htc.android.pcsc"

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v10, v10, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 223
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 224
    .local v7, pcsc:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v12, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    .end local v4           #i:I
    .end local v7           #pcsc:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "acc_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, acc_type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "acc_name"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, acc_name:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 235
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 236
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v10, v10, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v10, v10, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 237
    iput v4, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I

    .line 243
    .end local v4           #i:I
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->setCurrentAccountSource()V

    .line 245
    const v10, 0x7f07006d

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ImportVCardActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcSpinner;

    iput-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNames:Lcom/htc/widget/HtcSpinner;

    .line 246
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNames:Lcom/htc/widget/HtcSpinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcSpinner;->setVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "result"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVcard:[B

    .line 250
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVcard:[B

    if-eqz v10, :cond_5

    .line 251
    new-instance v5, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 252
    .local v5, loadContactInfo:Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    .local v6, loadContactInfoThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 258
    .end local v5           #loadContactInfo:Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;
    .end local v6           #loadContactInfoThread:Ljava/lang/Thread;
    :goto_2
    const v10, 0x7f07002b

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ImportVCardActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 259
    .local v2, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 261
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    instance-of v10, v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 262
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 263
    .local v9, textview:Landroid/widget/TextView;
    const v10, 0x7f0a0154

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 266
    .end local v9           #textview:Landroid/widget/TextView;
    :cond_2
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/android/htccontacts/ImportVCardActivity2$2;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ImportVCardActivity2$2;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    .line 273
    .local v3, cancelButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v10, Lcom/android/htccontacts/ImportVCardActivity2$3;

    invoke-direct {v10, p0}, Lcom/android/htccontacts/ImportVCardActivity2$3;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 280
    return-void

    .line 221
    .end local v0           #acc_name:Ljava/lang/String;
    .end local v1           #acc_type:Ljava/lang/String;
    .end local v2           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .end local v3           #cancelButton:Lcom/htc/widget/HtcFooterButton;
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 235
    .restart local v0       #acc_name:Ljava/lang/String;
    .restart local v1       #acc_type:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 255
    .end local v4           #i:I
    :cond_5
    const-string v10, "ImportVCardActivity2"

    const-string v11, "mVcard is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 356
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03b7

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mReplaceContactListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03b6

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mNewContactListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 485
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    if-eqz v0, :cond_0

    .line 486
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_2

    .line 495
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 497
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 196
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1598
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mAdapter:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1600
    .local v1, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget v3, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    .line 1601
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1602
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1622
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    const v3, 0x7f070014

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;

    .line 1610
    .local v2, item:Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
    iget-boolean v3, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    .line 1611
    iget-object v3, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v5, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1613
    iget-boolean v3, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    if-eqz v3, :cond_3

    .line 1614
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->checkMaxAllowedItems(Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1615
    iput-boolean v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    .line 1616
    iget-object v3, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1610
    goto :goto_1

    .line 1621
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->checkAllUnSelectedOrNot()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 287
    :pswitch_0
    const v2, 0x7f0a03b5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    move-object v0, p2

    .line 288
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 289
    .local v0, _dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 431
    const-string v0, "ImportVCardActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume()... mIsDirty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 434
    const-string v0, "ImportVCardActivity2"

    const-string v1, "no contact information"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 470
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z

    if-eqz v0, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->dataChanged()V

    .line 441
    iput-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z

    .line 442
    const/4 v6, 0x0

    .line 443
    .local v6, photo:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v12

    .line 445
    .local v12, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 446
    const/4 v11, 0x0

    .line 447
    .local v11, item:Lcom/android/vcard/VCardEntry$PhotoData;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 448
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    check-cast v11, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 449
    .restart local v11       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    const-string v0, "ImportVCardActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location of first non null photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    if-eqz v11, :cond_2

    .line 456
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 457
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 465
    .end local v10           #i:I
    .end local v11           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .end local v12           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 466
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2;->hideLinkView()V

    .line 469
    .end local v6           #photo:Landroid/graphics/Bitmap;
    :cond_3
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    goto/16 :goto_0

    .line 447
    .restart local v6       #photo:Landroid/graphics/Bitmap;
    .restart local v10       #i:I
    .restart local v11       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .restart local v12       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 460
    :cond_5
    const-string v0, "ImportVCardActivity2"

    const-string v1, "item.photoBytes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
