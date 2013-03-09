.class Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2794
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 16

    .prologue
    .line 2798
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->startIndicator()V

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDoAddIndicatorRequest:Z

    .line 2802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v9

    .line 2803
    .local v9, firstVisiblePosition:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2805
    .local v13, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    add-int v14, v9, v10

    invoke-virtual {v2, v14}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    .line 2806
    .local v11, object:Ljava/lang/Object;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 2807
    .local v12, tagObject:Ljava/lang/Object;
    instance-of v2, v11, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    if-eqz v12, :cond_1

    instance-of v2, v12, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    if-eqz v2, :cond_1

    .line 2808
    move-object v0, v12

    check-cast v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    move-object v3, v0

    .line 2809
    .local v3, cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    move-object v7, v0

    .line 2810
    .local v7, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactId(Landroid/database/Cursor;)J

    move-result-wide v5

    .line 2811
    .local v5, contactId:J
    iput-wide v5, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    .line 2812
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2813
    .local v4, b:Landroid/os/Bundle;
    const-string v2, "contactId"

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2814
    iget-object v2, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    if-nez v2, :cond_2

    .line 2815
    new-instance v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;J)V

    .line 2817
    .local v1, request:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2819
    iput-object v1, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 2823
    .end local v1           #request:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :goto_1
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v14, v14, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    if-eq v2, v14, :cond_0

    .line 2824
    iget-object v2, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v14, v14, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeStatusId(J)V

    .line 2826
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v14, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v2, v14}, Lcom/android/htccontacts/app/ContactsListActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 2803
    .end local v3           #cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #contactId:J
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2821
    .restart local v3       #cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    .restart local v4       #b:Landroid/os/Bundle;
    .restart local v5       #contactId:J
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v2, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changePersonId(Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2829
    .end local v3           #cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #contactId:J
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #firstVisiblePosition:I
    .end local v10           #i:I
    .end local v11           #object:Ljava/lang/Object;
    .end local v12           #tagObject:Ljava/lang/Object;
    .end local v13           #v:Landroid/view/View;
    :catch_0
    move-exception v8

    .line 2830
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "ContactsListActivity"

    const-string v14, "Failed to start indicator requery, but it\'s ok since listview has became invalid."

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method
