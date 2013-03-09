.class public Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 1436
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 1437
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 1438
    iput-object p2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .line 1439
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1440
    invoke-static {p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 1441
    return-void
.end method


# virtual methods
.method public getAccountSet()Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1586
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1587
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 1589
    .local v1, validChild:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1590
    iget-object v2, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1592
    :goto_1
    return-object v2

    .line 1587
    .end local v1           #validChild:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1592
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

    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1599
    .local v0, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 1601
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1603
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1463
    if-nez p4, :cond_0

    .line 1464
    iget-object v9, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030016

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 1473
    :cond_0
    const v9, 0x1020014

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1474
    .local v7, text1:Landroid/widget/TextView;
    const v9, 0x1020015

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1475
    .local v8, text2:Landroid/widget/TextView;
    const v9, 0x1020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1477
    .local v2, checkbox:Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v9, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1478
    .local v1, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1479
    .local v3, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    const/4 v4, 0x0

    .line 1481
    .local v4, groupName:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1483
    invoke-virtual {v3}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getVisible()Z

    move-result v6

    .line 1484
    .local v6, groupVisible:Z
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1485
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1487
    iget-object v9, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1491
    .local v5, groupTitle:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    check-cast v5, Ljava/lang/String;

    .end local v5           #groupTitle:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v9, v5}, Lcom/android/htccontacts/util/ContactsUtils;->checkSystemMyContactAndObtainDisplayText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1494
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    .end local v6           #groupVisible:Z
    :cond_1
    return-object p4

    .line 1491
    .restart local v5       #groupTitle:Ljava/lang/CharSequence;
    .restart local v6       #groupVisible:Z
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1610
    iget-object v4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1611
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    iget-object v4, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 1612
    .local v1, anyHidden:Z
    :goto_0
    iget-object v4, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1           #anyHidden:Z
    :cond_0
    move v1, v3

    .line 1611
    goto :goto_0

    .restart local v1       #anyHidden:Z
    :cond_1
    move v2, v3

    .line 1612
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    if-nez v0, :cond_0

    .line 1623
    const/4 v0, 0x0

    .line 1625
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1630
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1519
    if-nez p3, :cond_0

    .line 1520
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030017

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1529
    :cond_0
    const v8, 0x1020014

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1530
    .local v6, text1:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1532
    .local v7, text2:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-virtual {v8, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1533
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    const v8, 0x1020001

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1535
    .local v1, checkbox:Landroid/widget/CheckBox;
    iget-boolean v8, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1537
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    iget-object v8, v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mUIHandler:Landroid/os/Handler;

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 1538
    .local v4, msg:Landroid/os/Message;
    const/16 v8, 0x1a0a

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1539
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 1541
    new-instance v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;

    invoke-direct {v8, p0, v1, v0, v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;-><init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;Landroid/widget/CheckBox;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;Landroid/os/Message;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1553
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v9, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 1557
    .local v5, source:Lcom/android/htccontacts/model/AccountType;
    const-string v2, ""

    .line 1559
    .local v2, count:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 1560
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v8, v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v8, v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountType:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1562
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v2, v8, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mCounts:Ljava/lang/String;

    .line 1559
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1573
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1574
    const-string v8, "com.htc.android.pcsc"

    iget-object v9, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.anddroid.contacts.sim"

    iget-object v9, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1576
    :cond_3
    iget-object v8, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    :goto_1
    return-object p3

    .line 1578
    :cond_4
    iget-object v8, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1635
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1640
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mAccounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    .line 1445
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1446
    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1447
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isAllChildChecked(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    .line 1445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1449
    .end local v0           #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1450
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .parameter "withPhones"

    .prologue
    .line 1457
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 1458
    return-void
.end method
