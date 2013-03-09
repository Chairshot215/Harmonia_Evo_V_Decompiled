.class Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "DisplayExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        "Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final QUERY_ACCOUNT_MEMBERS:Ljava/lang/String; = "query_account_member"

.field public static final QUERY_ALL_DROPDOWNVIEW:Ljava/lang/String; = "query_all_dropdownview"

.field public static final UPDATE_GROUP_VIEW:Ljava/lang/String; = "update_group_view"


# instance fields
.field private mQueryType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 919
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 9
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 924
    if-eqz p1, :cond_0

    .line 925
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->mQueryType:Ljava/lang/String;

    .line 926
    const-string v0, "query_account_member"

    aget-object v3, p2, v4

    if-ne v0, v3, :cond_1

    .line 927
    const-string v0, "DisplayExpandableListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->mQueryType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v0, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 929
    .local v1, queryUri:Landroid/net/Uri;
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$000(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 930
    .local v8, cursor:Landroid/database/Cursor;
    const-string v0, "DisplayExpandableListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 942
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v2

    .line 932
    :cond_1
    const-string v0, "update_group_view"

    aget-object v3, p2, v4

    if-ne v0, v3, :cond_2

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->startUpdateView(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V

    goto :goto_0

    .line 935
    :cond_2
    const-string v0, "query_all_dropdownview"

    aget-object v3, p2, v4

    if-ne v0, v3, :cond_0

    .line 936
    const/4 v0, 0x1

    aget-object v6, p2, v0

    check-cast v6, Ljava/util/ArrayList;

    .line 938
    .local v6, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {p1, v6}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->getAccountSetList(Ljava/util/ArrayList;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    move-result-object v7

    .line 939
    .local v7, accounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    invoke-virtual {p1, v7}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->setAccounts(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 910
    check-cast p1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->doInBackground(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected endQueryGroupMemberCount(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 18
    .parameter "target"
    .parameter "result"

    .prologue
    .line 963
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 965
    const/4 v12, 0x0

    .line 968
    .local v12, simCount:I
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 969
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 970
    .local v11, name:Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 971
    .local v14, type:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, dataSet:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v9, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mAccountName:Ljava/lang/String;

    .line 974
    .local v9, listAccountName:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v15, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v10, v15, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 975
    .local v10, listAccountType:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v15, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v8, v15, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 977
    .local v8, listAccountDataSet:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "com.anddroid.contacts.sim"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 978
    const/4 v15, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/2addr v12, v15

    .line 979
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    .line 968
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 980
    :cond_2
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    #calls: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 984
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    goto :goto_1

    .line 990
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v8           #listAccountDataSet:Ljava/lang/String;
    .end local v9           #listAccountName:Ljava/lang/String;
    .end local v10           #listAccountType:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 992
    .end local v6           #i:I
    .end local v12           #simCount:I
    :cond_4
    if-eqz p2, :cond_5

    .line 993
    new-instance v4, Lcom/android/htccontacts/BackgroundWorkerHandler;

    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$000(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/ContentResolver;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 994
    .local v4, closeCursorHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 996
    .end local v4           #closeCursorHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    :cond_5
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$300(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v13

    .line 997
    .local v13, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 999
    .local v3, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v15, "com.htc.socialnetwork.flickr"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1000
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_6

    .line 1002
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    .line 1004
    .local v2, accCount:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
    iget-object v15, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v15, v15, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v2, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v15, v15, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v0, v3, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v16, v0

    #calls: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v15 .. v16}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    iget-object v15, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1008
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$100(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;

    const-string v16, " (0)"

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;->mCounts:Ljava/lang/String;

    .line 1000
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1014
    .end local v2           #accCount:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
    .end local v3           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v6           #i:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->notifyDataSetChanged()V

    .line 1015
    return-void
.end method

.method protected onPostExecute(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 947
    const-string v0, "query_account_member"

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->mQueryType:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->endQueryGroupMemberCount(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Landroid/database/Cursor;)V

    .line 960
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mInQuery:Z

    .line 961
    return-void

    .line 949
    :cond_1
    const-string v0, "update_group_view"

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->mQueryType:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 950
    iget-object v0, p1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataBaseActionEventHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;->onUpdateViewComplete()V

    .line 951
    if-eqz p2, :cond_0

    .line 952
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 954
    :cond_2
    const-string v0, "query_all_dropdownview"

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->mQueryType:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mDataBaseActionEventHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;->queryAllDataComplete()V

    .line 956
    if-eqz p2, :cond_0

    .line 957
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 910
    check-cast p1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    .end local p1
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$QueryGroupsTask;->onPostExecute(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Landroid/database/Cursor;)V

    return-void
.end method

.method protected startUpdateView(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 1017
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    invoke-static {p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$400(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1018
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mAccounts:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;
    invoke-static {p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$400(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 1020
    .local v0, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    #getter for: Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->access$000(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1028
    .end local v0           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    :goto_0
    return-void

    .line 1021
    .restart local v0       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    .line 1022
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "DisplayExpandableListAdapter"

    const-string v3, "Problem saving display groups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1023
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1025
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v2, "DisplayExpandableListAdapter"

    const-string v3, "Problem saving display groups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
