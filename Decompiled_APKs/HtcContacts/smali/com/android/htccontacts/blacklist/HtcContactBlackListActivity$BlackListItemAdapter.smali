.class public Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BlackListItemAdapter"
.end annotation


# instance fields
.field mAccountIdx:I

.field mContactIdx:I

.field mDisplayNameIdx:I

.field mIdxLookupKey:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    .line 831
    invoke-direct {p0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 832
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 833
    if-eqz p3, :cond_0

    .line 836
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    .line 837
    const-string v1, "lookup"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    .line 838
    const-string v1, "display_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    .line 839
    const-string v1, "ext_account_Type"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 846
    :cond_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcContactBlackListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlackListItemAdapter - Database column not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 859
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 861
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 863
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 866
    :cond_0
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 869
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 870
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-super {p0, p2, p3, v6, v5}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 871
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 872
    .local v3, personId:J
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, lookup:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 876
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 877
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 883
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 926
    const/4 v3, 0x0

    .line 927
    .local v3, uri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    if-gez v5, :cond_0

    move-object v4, v3

    .line 939
    .end local v3           #uri:Landroid/net/Uri;
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 930
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 932
    .local v0, contactId:J
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    if-ltz v5, :cond_1

    .line 933
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .end local v2           #lookupKey:Ljava/lang/String;
    :goto_1
    move-object v4, v3

    .line 939
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 937
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 897
    if-nez p1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a02f9

    const v3, 0x2080237

    const/4 v4, 0x0

    new-instance v5, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter$1;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;)V

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 911
    :cond_0
    return-object p1
.end method

.method public isSimContactItem(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 916
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    if-ltz v1, :cond_0

    .line 917
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    const/4 v1, 0x1

    .line 922
    .end local v0           #accountType:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 851
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 853
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->access$302(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Z)Z

    .line 971
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->access$400(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startQuery(Z)V

    .line 974
    :cond_0
    return-void
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->showDialog(I)V

    .line 950
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 965
    const/4 v0, 0x0

    return v0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 888
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcContactBlackListActivity"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
