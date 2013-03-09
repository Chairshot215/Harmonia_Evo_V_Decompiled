.class public Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;
.super Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.source "GroupPeopleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupPeopleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupContactsItemListAdapter"
.end annotation


# instance fields
.field mBuffer:Ljava/lang/StringBuffer;

.field protected mIdxTimes:I

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupPeopleView;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupPeopleView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    .line 1292
    const v0, 0x2090020

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->mBuffer:Ljava/lang/StringBuffer;

    .line 1293
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1320
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    .line 1334
    .local v0, cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    return-void
.end method

.method protected checkFirstItemTopRoundShow()Z
    .locals 1

    .prologue
    .line 1338
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v0

    return v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1300
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->onContentChanged()V

    .line 1301
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iput-boolean v2, v1, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1302
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$1200(Lcom/android/htccontacts/group/GroupPeopleView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 1304
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 1305
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    #calls: Lcom/android/htccontacts/group/GroupPeopleView;->getParentCacheTitle()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$1300(Lcom/android/htccontacts/group/GroupPeopleView;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iput-object v0, v1, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->pauseIndicator()V

    .line 1312
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    #calls: Lcom/android/htccontacts/group/GroupPeopleView;->startQueryName()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$1400(Lcom/android/htccontacts/group/GroupPeopleView;)V

    .line 1313
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startQuery()V

    .line 1314
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startQueryGroupPhoto()V

    .line 1316
    .end local v0           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateIndex(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1344
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 1345
    const-string v0, "times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->mIdxTimes:I

    .line 1346
    return-void
.end method
