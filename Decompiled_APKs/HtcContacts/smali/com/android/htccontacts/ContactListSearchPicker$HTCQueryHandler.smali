.class public Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;
.super Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HTCQueryHandler"
.end annotation


# instance fields
.field protected mLoadingJoinSuggestions:Z

.field protected final mPickerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactListSearchPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;->mLoadingJoinSuggestions:Z

    .line 1013
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/ContactListSearchPicker;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;->mPickerActivity:Ljava/lang/ref/WeakReference;

    .line 1015
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;->mPickerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/ContactListSearchPicker;

    .line 1020
    .local v10, picker:Lcom/android/htccontacts/ContactListSearchPicker;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    :cond_0
    if-eqz p3, :cond_1

    .line 1023
    invoke-interface {p3}, Landroid/database/Cursor;->deactivate()V

    .line 1024
    new-instance v9, Lcom/android/htccontacts/BackgroundWorkerHandler;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1025
    .local v9, handler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-virtual {v9, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1026
    const/4 p3, 0x0

    .line 1100
    .end local v9           #handler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    :cond_1
    :goto_0
    return-void

    .line 1030
    :cond_2
    const/4 v0, 0x0

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z
    invoke-static {v10, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->access$402(Lcom/android/htccontacts/ContactListSearchPicker;Z)Z

    .line 1033
    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$600()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$602(J)J

    .line 1045
    iget-boolean v0, v10, Lcom/android/htccontacts/ContactListSearchPicker;->mContentReady:Z

    if-nez v0, :cond_4

    .line 1046
    invoke-virtual {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->restoreList()V

    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/htccontacts/ContactListSearchPicker;->mContentReady:Z

    .line 1050
    :cond_4
    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_6

    .line 1051
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 1052
    if-eqz p3, :cond_5

    .line 1053
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    .line 1056
    :cond_5
    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mRunKeyCodeFilter:Z
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$700(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$800(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, text:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$900(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1059
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1000(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    .end local v11           #text:Ljava/lang/String;
    :cond_6
    const/16 v0, 0x3c

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1100(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v1

    if-ne v0, v1, :cond_9

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_9

    .line 1064
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_7

    iget-boolean v0, v10, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterMode:Z

    if-nez v0, :cond_7

    .line 1065
    invoke-virtual {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    .line 1066
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, selection:Ljava/lang/String;
    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1200(Lcom/android/htccontacts/ContactListSearchPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1068
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1069
    .local v8, builder:Landroid/net/Uri$Builder;
    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1300(Lcom/android/htccontacts/ContactListSearchPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1075
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$602(J)J

    .line 1076
    const/16 v1, 0x3fc

    const/4 v2, 0x0

    sget-object v4, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 1080
    if-eqz p3, :cond_1

    .line 1081
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1072
    .restart local v3       #queryUri:Landroid/net/Uri;
    .restart local v5       #selection:Ljava/lang/String;
    :cond_8
    #calls: Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1400(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 1085
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    :cond_9
    const/16 v0, 0x3c

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1500(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v1

    if-ne v0, v1, :cond_b

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z
    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_b

    .line 1086
    iget-boolean v0, v10, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterMode:Z

    if-nez v0, :cond_a

    .line 1087
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 1088
    if-eqz p3, :cond_1

    .line 1089
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1093
    :cond_a
    invoke-virtual {v10, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1094
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 1098
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method
