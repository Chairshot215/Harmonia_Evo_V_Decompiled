.class public Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactPhoneMailSelectionListActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;,
        Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;
    }
.end annotation


# static fields
.field static final HANDLER_EVENT_DISMISS_PROGRESS_BAR:I = 0x1113

.field static final HANDLER_EVENT_SHOW_PROGRESS_BAR:I = 0x1112

.field public static final TARGET_TYPE:Ljava/lang/String; = "TARGET_TYPE"


# instance fields
.field private final HANDLER_MSG_UILIST_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private volatile isPause:Z

.field private mCompanyDorectoryAddresslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompanyDorectoryNamelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mlist_data_kind:I

.field private selfFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    .line 43
    const-string v0, "HtcContactListScreenContactListActivity"

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0x1111

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->HANDLER_MSG_UILIST_UPDATE:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mCompanyDorectoryNamelist:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mCompanyDorectoryAddresslist:Ljava/util/ArrayList;

    .line 57
    const v0, 0xf000003

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mlist_data_kind:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->selfFinish:Z

    .line 194
    new-instance v0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;-><init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHandler:Landroid/os/Handler;

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->doOK()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->doCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->initList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->selfFinish:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->isPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->genertateEntryView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->finish()V

    .line 247
    return-void
.end method

.method private doOK()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, dataintent:Landroid/content/Intent;
    const-string v1, "addresslist"

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 240
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->finish()V

    .line 242
    return-void
.end method

.method private genertateEntryView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "size"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 297
    const/4 v3, 0x0

    .line 298
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 299
    .local v1, cache:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    if-nez p2, :cond_3

    .line 301
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v4, 0x67

    invoke-direct {v0, p0, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 303
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .end local v1           #cache:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    invoke-direct {v1, v6, v6}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    .line 304
    .restart local v1       #cache:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v4

    iput-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 305
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v4

    iput-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 307
    move-object v3, v0

    .line 312
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 315
    .local v2, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    if-nez v1, :cond_0

    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cache:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    check-cast v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .line 319
    .restart local v1       #cache:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    :cond_0
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 321
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemCheckBox;->invalidate()V

    .line 324
    :cond_1
    iget-boolean v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-eqz v4, :cond_4

    .line 326
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 327
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 329
    iput v6, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 357
    :cond_2
    :goto_1
    add-int/lit8 v4, p4, -0x1

    if-ne p1, v4, :cond_8

    .line 358
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 359
    check-cast v4, Lcom/htc/widget/HtcListItem;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 364
    :goto_2
    return-object v3

    .line 309
    .end local v2           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_3
    move-object v3, p2

    goto :goto_0

    .line 331
    .restart local v2       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_4
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-nez v4, :cond_6

    .line 339
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    if-gez v4, :cond_5

    .line 341
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->fillDataEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;II)Z

    .line 345
    :cond_5
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 346
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    :cond_6
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-ne v4, v7, :cond_2

    .line 349
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    if-gez v4, :cond_7

    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    if-gez v4, :cond_7

    .line 350
    iget v4, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    invoke-virtual {p0, v2, v4, v7}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->fillDataEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;II)Z

    .line 353
    :cond_7
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 354
    iget-object v4, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v5, v2, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, v3

    .line 361
    check-cast v4, Lcom/htc/widget/HtcListItem;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2
.end method

.method private getCurrentCursorCount()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private initList()V
    .locals 5

    .prologue
    .line 226
    new-instance v0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;-><init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    .line 227
    .local v0, adapter:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 231
    .local v1, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-boolean v4, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    invoke-virtual {v3, v2, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_0
    return-void
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mIntent:Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "addresslist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    .line 219
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "TARGET_TYPE"

    const v2, 0xf000003

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mlist_data_kind:I

    .line 221
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->spew()V

    .line 222
    return-void
.end method

.method private setCheckedView(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 438
    instance-of v1, p1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-eqz v1, :cond_0

    .line 439
    check-cast p1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p1
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    .line 440
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 442
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemCheckBox;->invalidate()V

    .line 445
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method private spew()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method private toggleCheck(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 431
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 432
    .local v0, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v1, v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 433
    .local v1, isCheck:Z
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setCheckedView(Landroid/view/View;Z)V

    .line 434
    if-nez v1, :cond_1

    :goto_1
    iput-boolean v3, v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 435
    return-void

    :cond_0
    move v2, v4

    .line 433
    goto :goto_0

    :cond_1
    move v3, v4

    .line 434
    goto :goto_1
.end method


# virtual methods
.method protected dismissQueryProgress()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 180
    :cond_0
    return-void
.end method

.method public fillDataEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;II)Z
    .locals 11
    .parameter "data"
    .parameter "address_id"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 388
    const/4 v8, 0x1

    .line 389
    .local v8, result:Z
    const/4 v7, 0x0

    .line 390
    .local v7, rawpersonId:I
    iget-boolean v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mCompanyDorectoryNamelist:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mCompanyDorectoryAddresslist:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_0
    :goto_0
    return v8

    .line 394
    :cond_1
    if-nez p3, :cond_3

    .line 395
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 396
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 400
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 401
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 402
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 409
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 405
    :cond_2
    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 406
    iput-boolean v10, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 407
    const/4 v8, 0x0

    goto :goto_1

    .line 411
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 412
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 413
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 416
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 417
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 418
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 425
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 421
    :cond_4
    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    iput v9, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 422
    iput-boolean v10, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 423
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public fillSIMPhoneEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 368
    iget v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    if-eqz v0, :cond_1

    .line 369
    iget v7, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 370
    .local v7, rowId:I
    const-string v0, "content://contacts/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 371
    .local v1, uri:Landroid/net/Uri;
    int-to-long v3, v7

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 376
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 377
    iget-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 381
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 384
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #rowId:I
    :cond_1
    return-void
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 5

    .prologue
    .line 487
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 488
    .local v3, size:I
    const/4 v0, 0x0

    .line 489
    .local v0, counts:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 490
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 491
    .local v1, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v4, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v4, :cond_0

    .line 492
    add-int/lit8 v0, v0, 0x1

    .line 489
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_1
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->requestWindowFeature(I)Z

    .line 65
    const v1, 0x7f030032

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 69
    const v1, 0x7f0a0261

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setGenericTitleBar(I)V

    .line 71
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->initListHeaderView()V

    .line 77
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mResolver:Landroid/content/ContentResolver;

    .line 78
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->resolveIntent()V

    .line 80
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 81
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$1;-><init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$2;-><init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->selfFinish:Z

    .line 141
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->setAllItemChecked(Z)Z

    .line 518
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 185
    .local v0, cur_pos:I
    if-gez v0, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 190
    .local v1, pos:I
    invoke-direct {p0, p2, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->toggleCheck(Landroid/view/View;I)V

    .line 191
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->isPause:Z

    .line 161
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPostResume()V

    .line 147
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "addresslist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->isPause:Z

    .line 112
    new-instance v0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;-><init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;Landroid/os/Handler;Ljava/util/ArrayList;)V

    .line 113
    .local v0, t:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->start()V

    .line 114
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 119
    const-string v0, "addresslist"

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStart()V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->dismissQueryProgress()V

    .line 166
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 167
    return-void
.end method

.method protected setAllItemChecked(Z)Z
    .locals 4
    .parameter "check"

    .prologue
    .line 503
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 504
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 506
    .local v0, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iput-boolean p1, v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 507
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v1, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v0           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 511
    const/4 v3, 0x1

    return v3
.end method

.method protected showQueryProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 171
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 174
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getCurrentCursorCount()I

    move-result v0

    .line 522
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 523
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 524
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 526
    :cond_0
    return-void

    .line 524
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
