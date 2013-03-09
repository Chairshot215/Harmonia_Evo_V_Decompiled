.class public Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

.field final synthetic this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;Landroid/content/Context;Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mChildWithPhones:Z

    .line 1259
    iput-object p2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 1260
    iput-object p3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    .line 1261
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1262
    invoke-static {p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 1263
    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;)Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getAccountSet()Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1375
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1376
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 1378
    .local v1, validChild:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1379
    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1381
    :goto_1
    return-object v2

    .line 1376
    .end local v1           #validChild:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1381
    .restart local v1       #validChild:Z
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

    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1388
    .local v0, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 1390
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1392
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x1f4

    .line 1285
    const/4 v1, 0x0

    .line 1286
    .local v1, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-nez p4, :cond_0

    .line 1288
    new-instance p4, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p4
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p4, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local p4
    move-object v1, p4

    .line 1289
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 1291
    :cond_0
    if-nez v1, :cond_1

    .line 1292
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v1           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1295
    .restart local v1       #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v6, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1296
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1297
    .local v2, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    const/4 v3, 0x0

    .line 1299
    .local v3, groupName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1301
    invoke-virtual {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getVisible()Z

    move-result v5

    .line 1302
    .local v5, groupVisible:Z
    invoke-virtual {v1, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setCheckBox(Z)V

    .line 1303
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1304
    .local v4, groupTitle:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->checkSystemMyContactAndObtainDisplayText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 1306
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 1317
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    .end local v5           #groupVisible:Z
    :cond_2
    return-object v1
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1399
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1400
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    iget-object v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 1401
    .local v1, anyHidden:Z
    :goto_0
    iget-object v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1           #anyHidden:Z
    :cond_0
    move v1, v3

    .line 1400
    goto :goto_0

    .restart local v1       #anyHidden:Z
    :cond_1
    move v2, v3

    .line 1401
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    if-nez v0, :cond_0

    .line 1412
    const/4 v0, 0x0

    .line 1414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1419
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1323
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x1f4

    invoke-direct {v1, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1325
    .local v1, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-nez p3, :cond_0

    .line 1329
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-virtual {v6, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1331
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    iget-boolean v6, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    invoke-virtual {v1, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setCheckBox(Z)V

    .line 1333
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v6

    new-instance v7, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;

    invoke-direct {v7, p0, v1, v0, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;I)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 1351
    .local v5, source:Lcom/android/htccontacts/model/AccountType;
    const-string v2, ""

    .line 1353
    .local v2, count:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 1354
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    iget-object v6, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    iget-object v6, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    iget-object v6, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mDataSet:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1358
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    iget-object v2, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    .line 1353
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1363
    :cond_2
    iget-object v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    .line 1364
    .local v4, secondaryText:Ljava/lang/String;
    const-string v6, "com.htc.android.pcsc"

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.anddroid.contacts.sim"

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1366
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1368
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1370
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1424
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    .line 1267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1268
    invoke-virtual {p1, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1269
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isAllChildChecked(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    .line 1267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1271
    .end local v0           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->notifyDataSetChanged()V

    .line 1272
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .parameter "withPhones"

    .prologue
    .line 1279
    iput-boolean p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mChildWithPhones:Z

    .line 1280
    return-void
.end method
