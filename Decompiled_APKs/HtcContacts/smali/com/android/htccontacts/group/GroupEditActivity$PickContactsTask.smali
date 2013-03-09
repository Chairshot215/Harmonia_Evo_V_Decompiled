.class Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;",
        "Lcom/android/htccontacts/group/GroupEditActivity;",
        ">;"
    }
.end annotation


# instance fields
.field mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1968
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1969
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/group/GroupEditActivity;[Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;)Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;
    .locals 18
    .parameter "target"
    .parameter "params"

    .prologue
    .line 2028
    const/4 v2, 0x0

    aget-object v14, p2, v2

    .line 2029
    .local v14, pack:Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;
    iget-object v2, v14, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;->contactList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->mContactIds:Ljava/util/ArrayList;

    .line 2030
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2031
    .local v13, idList:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 2032
    .local v9, appendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, v14, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;->titleList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2034
    .local v17, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2035
    .local v10, counts:I
    const-string v2, "("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2036
    iget-object v2, v14, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2037
    .local v8, addId:I
    const-string v2, " , "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2038
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2039
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2041
    .end local v8           #addId:I
    :cond_0
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2042
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2500(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainAddableGroupMembers(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2044
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 2045
    .local v8, addId:Ljava/lang/Long;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2046
    const-string v2, " , "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2047
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2048
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2051
    .end local v8           #addId:Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2052
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2055
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 2056
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2058
    :cond_4
    const-string v2, ")"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2060
    if-nez v10, :cond_5

    .line 2061
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    .line 2062
    .local v16, size:I
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2063
    const-string v2, " 0 "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    .end local v16           #size:I
    :goto_2
    const-string v7, "display_name ASC"

    .line 2070
    .local v7, orderBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2072
    .local v5, selection:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2073
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/group/GroupEditActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2074
    .local v11, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/htccontacts/group/GroupEditActivity;->reSetBoundItem(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/database/Cursor;)V

    .line 2078
    new-instance v15, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;-><init>(Lcom/android/htccontacts/group/GroupEditActivity$1;)V

    .line 2079
    .local v15, returnResult:Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;
    iput-object v11, v15, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;->cursor:Landroid/database/Cursor;

    .line 2080
    iput-object v9, v15, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;->appendIds:Ljava/util/ArrayList;

    .line 2081
    return-object v15

    .line 2066
    .end local v5           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #returnResult:Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;
    :cond_5
    const/4 v2, 0x0

    const-string v3, "_id   IN "

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    check-cast p1, Lcom/android/htccontacts/group/GroupEditActivity;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->doInBackground(Lcom/android/htccontacts/group/GroupEditActivity;[Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;)Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/group/GroupEditActivity;Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;)V
    .locals 7
    .parameter "target"
    .parameter "resultstructure"

    .prologue
    .line 1982
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1983
    iget-object v4, p2, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;->appendIds:Ljava/util/ArrayList;

    .line 1984
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p2, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;->cursor:Landroid/database/Cursor;

    .line 1986
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1988
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1989
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1990
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int v3, v5

    .line 1992
    .local v3, idIntValue:I
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1993
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1994
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1988
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1997
    :cond_0
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2002
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #idIntValue:I
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->mContactIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2004
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 2005
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2006
    .local v2, id:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_2

    .line 2004
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2009
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2010
    .restart local v3       #idIntValue:I
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2011
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2012
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2015
    :cond_3
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2020
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/Integer;
    .end local v3           #idIntValue:I
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/htccontacts/group/GroupEditActivity;->setAddMemberbuttonVisibility(I)V

    .line 2021
    iget-object v5, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->changeCursorWithoutProcess(Landroid/database/Cursor;)V

    .line 2022
    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V
    invoke-static {p1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2200(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 2023
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    check-cast p1, Lcom/android/htccontacts/group/GroupEditActivity;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->onPostExecute(Lcom/android/htccontacts/group/GroupEditActivity;Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 1973
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 1974
    if-eqz p1, :cond_0

    .line 1975
    iget-object v0, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->isDirty:Z

    .line 1977
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1964
    check-cast p1, Lcom/android/htccontacts/group/GroupEditActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->onPreExecute(Lcom/android/htccontacts/group/GroupEditActivity;)V

    return-void
.end method
