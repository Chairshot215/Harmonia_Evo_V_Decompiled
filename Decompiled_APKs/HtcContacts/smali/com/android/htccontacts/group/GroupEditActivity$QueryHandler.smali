.class public Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupEditActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupWorkerHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    .line 1526
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1529
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/android/htccontacts/group/GroupEditActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1531
    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->closeProgress()V

    return-void
.end method

.method private closeProgress()V
    .locals 1

    .prologue
    .line 1563
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->sendEmptyMessage(I)Z

    .line 1564
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 1585
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;-><init>(Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->mGroupWorkerHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1570
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1572
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_0

    .line 1579
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 1590
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupEditActivity;

    .line 1592
    .local v0, activity:Lcom/android/htccontacts/group/GroupEditActivity;
    if-nez p3, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1597
    const/4 v4, 0x5

    if-ne p1, v4, :cond_5

    .line 1598
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1599
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1600
    .local v2, bytes:[B
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 1601
    array-length v4, v2

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1603
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1605
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1606
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1612
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1900(Lcom/android/htccontacts/group/GroupEditActivity;Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    .line 1613
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1614
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1616
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iput-object v1, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1619
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bytes:[B
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->deactivate()V

    .line 1620
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v4}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2000(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1622
    :cond_5
    if-nez p1, :cond_8

    .line 1623
    if-eqz p3, :cond_6

    .line 1625
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonIdIdx:I

    .line 1626
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v5, "display_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonNameIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    if-nez v4, :cond_7

    .line 1633
    new-instance v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2100(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030053

    iget-object v7, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mSeparaterView:Landroid/view/View;

    invoke-direct {v4, v5, v6, p3, v7}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V

    iput-object v4, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    .line 1635
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/group/GroupEditActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1640
    :goto_2
    invoke-virtual {v0, v8}, Lcom/android/htccontacts/group/GroupEditActivity;->setAddMemberbuttonVisibility(I)V

    .line 1641
    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2200(Lcom/android/htccontacts/group/GroupEditActivity;)V

    goto/16 :goto_0

    .line 1627
    :catch_0
    move-exception v3

    .line 1628
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "HtcGroupEditActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemberListItemAdapter - Database column not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1637
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_7
    iget-object v4, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v4, p3}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->changeCursorWithoutProcess(Landroid/database/Cursor;)V

    goto :goto_2

    .line 1643
    :cond_8
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1645
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1646
    if-eqz p3, :cond_b

    .line 1648
    :try_start_1
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonIdIdx:I

    .line 1649
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v5, "display_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonNameIdx:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1657
    :goto_3
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1658
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1660
    :cond_9
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonIdIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1662
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1665
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1667
    :cond_b
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v4, p3}, Lcom/android/htccontacts/group/GroupEditActivity;->setAdapter(Landroid/database/Cursor;)V

    .line 1674
    :goto_4
    invoke-virtual {v0, v8}, Lcom/android/htccontacts/group/GroupEditActivity;->setAddMemberbuttonVisibility(I)V

    .line 1675
    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2200(Lcom/android/htccontacts/group/GroupEditActivity;)V

    goto/16 :goto_0

    .line 1650
    :catch_1
    move-exception v3

    .line 1651
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "HtcGroupEditActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemberListItemAdapter - Database column not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1669
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_c
    invoke-interface {p3}, Landroid/database/Cursor;->deactivate()V

    .line 1670
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v4}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2000(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1671
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/group/GroupEditActivity;->setAdapter(Landroid/database/Cursor;)V

    goto :goto_4

    .line 1698
    :cond_d
    if-eqz p3, :cond_0

    .line 1701
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v4}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2000(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public saveGroupMembers(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->mGroupWorkerHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1567
    return-void
.end method
