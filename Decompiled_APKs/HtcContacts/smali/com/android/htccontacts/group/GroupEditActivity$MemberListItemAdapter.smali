.class public final Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "GroupEditActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MemberListItemAdapter"
.end annotation


# instance fields
.field mAccoutTypeIdx:I

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    .line 1750
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 1748
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mAccoutTypeIdx:I

    .line 1751
    invoke-direct {p0, p4}, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->initIdx(Landroid/database/Cursor;)V

    .line 1752
    return-void
.end method

.method private initIdx(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1797
    if-eqz p1, :cond_0

    .line 1798
    const-string v0, "ext_photo_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    .line 1799
    const-string v0, "photo_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 1800
    const-string v0, "ext_account_Type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mAccoutTypeIdx:I

    .line 1801
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonIdIdx:I

    .line 1802
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonNameIdx:I

    .line 1805
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1767
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;

    .line 1770
    .local v1, cache:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    iget v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mAccoutTypeIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1773
    .local v0, accountType:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2400(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPhotoView:Landroid/widget/ImageView;

    invoke-super {p0, v4, p3, v5, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1782
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget v4, v4, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonNameIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1785
    .local v3, personName:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1787
    iget-object v4, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPersonNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    :goto_1
    iget-object v4, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mClickListener:Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mPersonIdIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;->setItemId(I)V

    .line 1794
    return-void

    .line 1775
    .end local v3           #personName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1776
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "HtcGroupEditActivity"

    const-string v5, "loadContactPhoto: OutOfMemoryError"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1778
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 1779
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "HtcGroupEditActivity"

    const-string v5, "loadContactPhoto: exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1791
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #personName:Ljava/lang/String;
    :cond_0
    iget-object v4, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPersonNameView:Landroid/widget/TextView;

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1807
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->initIdx(Landroid/database/Cursor;)V

    .line 1808
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1813
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1814
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2000(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 1817
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 1818
    if-eqz p1, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1820
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1821
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mRowIDColumn:I

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mDataValid:Z

    .line 1824
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1826
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mRowIDColumn:I

    .line 1827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->mDataValid:Z

    .line 1829
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1835
    if-nez p1, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0106

    const v3, 0x2080237

    const/4 v4, 0x0

    new-instance v5, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter$1;-><init>(Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;)V

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 1850
    :cond_0
    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1755
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1756
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mPool:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;
    invoke-static {v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2300(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->getItemCache()Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;

    move-result-object v0

    .line 1757
    .local v0, cache:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPhotoView:Landroid/widget/ImageView;

    .line 1758
    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPersonNameView:Landroid/widget/TextView;

    .line 1759
    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mRemoveButtonView:Landroid/widget/ImageView;

    .line 1760
    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {v2, v3}, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mClickListener:Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;

    .line 1761
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mRemoveButtonView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mClickListener:Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1762
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1763
    return-object v1
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->doAddMember()V

    .line 1855
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 1862
    const/4 v0, 0x1

    return v0
.end method
