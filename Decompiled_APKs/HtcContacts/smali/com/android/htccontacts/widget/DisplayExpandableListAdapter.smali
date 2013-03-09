.class public Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;
.implements Landroid/widget/HeterogeneousExpandableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;,
        Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
    }
.end annotation


# static fields
.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field static final MSG_GROUP_VISIBLE:I = 0x1a0a

.field protected static final QUERY_CONTACT_COUNT_TOKEN:I = 0x6a4

.field private static final TAG:Ljava/lang/String; = "DisplayExpandableListAdapter"


# instance fields
.field protected final DATAGROUPLISTITEM:I

.field protected final LOADINGGROUPLISTITEM:I

.field public ShowLoading:Z

.field private childViewBackGround:Ljava/lang/String;

.field private groupViewBackGround:Ljava/lang/String;

.field private mAccountCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field protected mDataBaseActionEventHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mFullSizeSpaceString:Ljava/lang/String;

.field protected mInQuery:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSources:Lcom/android/htccontacts/model/AccountTypeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    .line 73
    const-string v0, "#434343"

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->childViewBackGround:Ljava/lang/String;

    .line 74
    const-string v0, "#1e1e1e"

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->groupViewBackGround:Ljava/lang/String;

    .line 206
    iput v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->DATAGROUPLISTITEM:I

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->LOADINGGROUPLISTITEM:I

    .line 900
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mInQuery:Z

    .line 1037
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-static {p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 99
    return-void
.end method

.method private static CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "dataSet1"
    .parameter "dataSet2"

    .prologue
    .line 1068
    if-ne p0, p1, :cond_0

    .line 1069
    const/4 v0, 0x1

    .line 1074
    :goto_0
    return v0

    .line 1071
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1072
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected bindChildView(IIZLandroid/view/View;)V
    .locals 11
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    .line 460
    .local v0, account:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 462
    .local v2, child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;

    .line 464
    .local v7, tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    iget-object v8, v7, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    .line 465
    .local v8, textLine:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v1, v7, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 466
    .local v1, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    const-string v4, ""

    .line 467
    .local v4, groupName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getVisible()Z

    move-result v6

    .line 468
    .local v6, groupVisible:Z
    if-eqz v1, :cond_0

    .line 469
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 470
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 471
    new-instance v9, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;

    invoke-direct {v9, p0, v1, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Lcom/htc/widget/HtcListItemCheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)V

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 480
    .local v5, groupTitle:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/htccontacts/util/ContactsUtils;->checkSystemMyContactAndObtainDisplayText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 485
    .end local v5           #groupTitle:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v8, :cond_1

    .line 486
    iget-object v9, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getGroupIsReadOnly()I

    move-result v10

    invoke-static {v9, v4, v10}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 487
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 490
    .end local v1           #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v4           #groupName:Ljava/lang/String;
    .end local v6           #groupVisible:Z
    .end local v7           #tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    .end local v8           #textLine:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    return-void

    .line 481
    .restart local v1       #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    .restart local v4       #groupName:Ljava/lang/String;
    .restart local v6       #groupVisible:Z
    .restart local v7       #tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    .restart local v8       #textLine:Lcom/htc/widget/HtcListItem2LineText;
    :catch_0
    move-exception v3

    .line 482
    .local v3, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0a03c2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected bindGroupView(IZLandroid/view/View;)V
    .locals 14
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"

    .prologue
    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;

    .line 361
    .local v10, tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    .line 365
    .local v0, accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v13, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v1

    .line 367
    .local v1, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    move v9, p1

    .line 369
    .local v9, setGroupPosition:I
    iget-object v11, v10, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    .line 370
    .local v11, textLine:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v2, v10, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 371
    .local v2, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    iget-object v4, v10, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->countLine:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 373
    .local v4, countLine:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->isChildVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 374
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 379
    :goto_0
    new-instance v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;

    invoke-direct {v12, p0, v2, v0, v9}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Lcom/htc/widget/HtcListItemCheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;I)V

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const-string v3, ""

    .line 390
    .local v3, count:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 391
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v12, v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v12, v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v13, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 393
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v3, v12, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    .line 390
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 376
    .end local v3           #count:Ljava/lang/String;
    .end local v7           #i:I
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 398
    .restart local v3       #count:Ljava/lang/String;
    .restart local v7       #i:I
    :cond_2
    const-string v6, ""

    .line 400
    .local v6, groupName:Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 405
    :goto_2
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->fillFullSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 411
    const-string v12, "com.htc.android.pcsc"

    iget-object v13, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v13, v13, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 412
    iget-object v12, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a002a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, secondaryString:Ljava/lang/String;
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 421
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 422
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 427
    :goto_5
    return-void

    .line 401
    .end local v8           #secondaryString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 402
    .local v5, e:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_2

    .line 414
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    const-string v12, "com.anddroid.contacts.sim"

    iget-object v13, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v13, v13, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 416
    move-object v8, v6

    .restart local v8       #secondaryString:Ljava/lang/String;
    goto :goto_4

    .line 418
    .end local v8           #secondaryString:Ljava/lang/String;
    :cond_4
    iget-object v8, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mName:Ljava/lang/String;

    .restart local v8       #secondaryString:Ljava/lang/String;
    goto :goto_4

    .line 424
    :cond_5
    invoke-virtual {v11, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_5

    .line 406
    .end local v8           #secondaryString:Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_3
.end method

.method protected fillFullSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1064
    :cond_0
    return-object p1
.end method

.method public getAccountSet()Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    return-object v0
.end method

.method public getAccountSetList(Ljava/util/ArrayList;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;)",
            "Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v3, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-direct {v3}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;-><init>()V

    .line 870
    .local v3, accounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    iget-object v6, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 871
    .local v2, accountTypes:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 872
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 873
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v2, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v1

    .line 874
    .local v1, accountType:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/AccountType;->isExtension()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 880
    :cond_1
    const-string v6, "com.htc.socialnetwork.flickr"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 881
    new-instance v5, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    invoke-direct {v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;-><init>()V

    .line 882
    .local v5, mAccountCount:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mAccountName:Ljava/lang/String;

    .line 883
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v6

    iput-object v6, v5, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 886
    const-string v6, ""

    iput-object v6, v5, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    .line 887
    iget-object v6, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v6, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    iget-object v7, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v5           #mAccountCount:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
    :cond_2
    return-object v3
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    .line 277
    .local v0, accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v1, 0x1

    .line 278
    .local v1, vaildChild:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 279
    iget-object v2, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 281
    :goto_1
    return-object v2

    .line 277
    .end local v1           #vaildChild:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    .restart local v1       #vaildChild:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 293
    .local v0, child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 295
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 297
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildType(II)I
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 432
    if-nez p4, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p5

    .line 433
    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->newChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 437
    .local v6, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->bindChildView(IIZLandroid/view/View;)V

    .line 438
    return-object v6

    .line 435
    .end local v6           #v:Landroid/view/View;
    :cond_0
    move-object v6, p4

    .restart local v6       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    iget-boolean v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    if-nez v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    .line 262
    .local v0, accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    iget-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 263
    .local v1, hiddenGroup:Z
    :goto_0
    iget-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_2

    :goto_1
    add-int v3, v4, v2

    .line 265
    .end local v0           #accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    .end local v1           #hiddenGroup:Z
    :cond_0
    return v3

    .restart local v0       #accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
    :cond_1
    move v1, v3

    .line 262
    goto :goto_0

    .restart local v1       #hiddenGroup:Z
    :cond_2
    move v2, v3

    .line 263
    goto :goto_1
.end method

.method public getCombinedChildId(JJ)J
    .locals 5
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 164
    const-wide/high16 v0, -0x8000

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, p1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 3
    .parameter "groupId"

    .prologue
    .line 179
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    if-nez v0, :cond_1

    .line 241
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 287
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 310
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object p3

    .line 322
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 312
    .restart local p3
    :cond_1
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    if-nez v1, :cond_0

    .line 316
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 317
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->newGroupView(IZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, v:Landroid/view/View;
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->bindGroupView(IZLandroid/view/View;)V

    move-object p3, v0

    .line 322
    goto :goto_0

    .line 319
    .end local v0           #v:Landroid/view/View;
    :cond_3
    move-object v0, p3

    .restart local v0       #v:Landroid/view/View;
    goto :goto_1
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x20300ce

    .line 326
    new-instance v0, Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, listItem:Lcom/htc/widget/HtcListItem;
    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, orgString:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    .line 329
    .local v2, textView:Lcom/htc/widget/HtcListItem1LineCenteredText;
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->setFullSpaceString(I)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->fillFullSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 332
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 333
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 443
    new-instance v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x1f4

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 444
    .local v3, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    .line 445
    .local v2, textLine:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    .line 446
    .local v0, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    new-instance v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    .line 448
    .local v1, tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    const v4, 0x2030012

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    .line 449
    const v4, 0x2030025

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextStyle(I)V

    .line 450
    iget-object v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->childViewBackGround:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setBackgroundColor(I)V

    .line 451
    iput-object v0, v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 452
    iput-object v2, v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    .line 453
    invoke-virtual {v3, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 454
    return-object v3
.end method

.method protected newGroupView(IZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const v8, 0x2030025

    const v7, 0x2030012

    .line 336
    new-instance v4, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v5, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0x1f4

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 337
    .local v4, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v3

    .line 338
    .local v3, textLine:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;

    iget-object v5, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;-><init>(Landroid/content/Context;)V

    .line 339
    .local v1, countLine:Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;
    invoke-virtual {v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    .line 340
    .local v0, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    new-instance v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    .line 343
    .local v2, tag:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
    invoke-virtual {v3, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    .line 344
    invoke-virtual {v3, v8}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextStyle(I)V

    .line 345
    invoke-virtual {v1, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setPrimaryTextStyle(I)V

    .line 346
    invoke-virtual {v1, v8}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setSecondaryTextStyle(I)V

    .line 347
    invoke-virtual {v4, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 348
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->enableMarquee(Z)V

    .line 349
    iput-object v0, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 350
    iput-object v3, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    .line 351
    iput-object v1, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->countLine:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 353
    invoke-virtual {v4, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 354
    return-object v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 130
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 123
    return-void
.end method

.method public onExpandChildClick(Landroid/widget/CheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)Z
    .locals 2
    .parameter "checkbox"
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 859
    if-eqz p2, :cond_0

    .line 860
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 861
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->putVisible(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->notifyDataSetChanged()V

    .line 865
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 861
    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 147
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 150
    return-void
.end method

.method protected processStringWidthPix(Ljava/lang/String;I)F
    .locals 4
    .parameter "string"
    .parameter "style"

    .prologue
    const/4 v3, 0x1

    .line 1049
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1050
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1051
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 1052
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1053
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1056
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1057
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    return v2
.end method

.method public queryAllAccountData(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const/4 v3, 0x1

    .line 902
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mInQuery:Z

    if-nez v1, :cond_0

    .line 903
    iput-boolean v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mInQuery:Z

    .line 904
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 905
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    const-string v2, "query_all_dropdownview"

    aput-object v2, v0, v1

    .line 906
    aput-object p1, v0, v3

    .line 907
    new-instance v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 909
    .end local v0           #params:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public queryGroupCountContact()V
    .locals 3

    .prologue
    .line 896
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 897
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    const-string v2, "query_account_member"

    aput-object v2, v0, v1

    .line 898
    new-instance v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 899
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public saveChangeValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    new-array v0, v1, [Ljava/lang/String;

    .line 139
    .local v0, params:[Ljava/lang/Object;
    const-string v3, "update_group_view"

    aput-object v3, v0, v2

    .line 140
    new-instance v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;-><init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    .end local v0           #params:[Ljava/lang/Object;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setAccounts(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    .line 108
    return-void
.end method

.method public setAllChildToggle(IZ)V
    .locals 3
    .parameter "groupPosition"
    .parameter "isChecked"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 249
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 250
    invoke-virtual {p0, p1, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 252
    .local v0, child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->putVisible(Z)V

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0           #child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    :cond_1
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .parameter "withPhones"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mChildWithPhones:Z

    .line 234
    return-void
.end method

.method protected setFullSpaceString(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 1039
    const-string v1, ""

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, mMaxCharacterPix:I
    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1042
    :goto_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->processStringWidthPix(Ljava/lang/String;I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mFullSizeSpaceString:Ljava/lang/String;

    goto :goto_0

    .line 1046
    .end local v0           #mMaxCharacterPix:I
    :cond_0
    return-void
.end method

.method public setOnDataBaseActionHandler(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;)V
    .locals 0
    .parameter "dataBaseActionEventHandler"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataBaseActionEventHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

    .line 91
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
