.class Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 15

    .prologue
    .line 1837
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->setEnableAndFlush()V

    .line 1838
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator()V

    .line 1839
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    .line 1843
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1844
    .local v9, firstVisiblePosition:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2500(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 1845
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2600(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1846
    .local v14, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2700(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    add-int v2, v9, v10

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    .line 1847
    .local v11, object:Ljava/lang/Object;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 1848
    .local v13, tagObject:Ljava/lang/Object;
    instance-of v1, v11, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz v13, :cond_0

    instance-of v1, v13, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    if-eqz v1, :cond_0

    .line 1849
    move-object v0, v13

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    move-object v3, v0

    .line 1850
    .local v3, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    move-object v7, v0

    .line 1851
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getGroupName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1853
    .local v5, groupName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getGroupIsReadOnly(Landroid/database/Cursor;)I

    move-result v6

    .line 1854
    .local v6, groupIsReadOnly:I
    iput-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    .line 1856
    iput v6, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    .line 1858
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1859
    .local v4, b:Landroid/os/Bundle;
    const-string v1, "groupName"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    if-nez v1, :cond_1

    .line 1861
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2800(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->obtainGroupIndicator(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    move-result-object v12

    .line 1863
    .local v12, request:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    iput-object v12, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 1867
    .end local v12           #request:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1844
    .end local v3           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #groupIsReadOnly:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1865
    .restart local v3       #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .restart local v4       #b:Landroid/os/Bundle;
    .restart local v5       #groupName:Ljava/lang/String;
    .restart local v6       #groupIsReadOnly:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->changePersonId(Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1870
    .end local v3           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #groupIsReadOnly:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #firstVisiblePosition:I
    .end local v10           #i:I
    .end local v11           #object:Ljava/lang/Object;
    .end local v13           #tagObject:Ljava/lang/Object;
    .end local v14           #v:Landroid/view/View;
    :catch_0
    move-exception v8

    .line 1871
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "BrowseGroupsActivity"

    const-string v2, "Failed to start indicator requery, but it\'s ok since listview has became invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
