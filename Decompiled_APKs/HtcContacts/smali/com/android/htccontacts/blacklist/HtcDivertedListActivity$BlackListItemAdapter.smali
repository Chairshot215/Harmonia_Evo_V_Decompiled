.class public Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "HtcDivertedListActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;
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

.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    .line 791
    invoke-direct {p0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 792
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 793
    if-eqz p3, :cond_0

    .line 796
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    .line 797
    const-string v1, "lookup"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    .line 798
    const-string v1, "display_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    .line 799
    const-string v1, "ext_account_Type"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 806
    :cond_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcDivertedListActivity"

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
    .line 819
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 821
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 823
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 825
    :cond_0
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 828
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-super {p0, p2, p3, v6, v5}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 831
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 832
    .local v3, personId:J
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, lookup:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 834
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-static {v3, v4, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 836
    :cond_1
    return-void
.end method

.method public getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, uri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    if-gez v5, :cond_0

    move-object v4, v3

    .line 883
    .end local v3           #uri:Landroid/net/Uri;
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 874
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 876
    .local v0, contactId:J
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    if-ltz v5, :cond_1

    .line 877
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .end local v2           #lookupKey:Ljava/lang/String;
    :goto_1
    move-object v4, v3

    .line 883
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 881
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 852
    const v1, 0x2020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 853
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 855
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-object p1
.end method

.method public isSimContactItem(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 860
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    if-ltz v1, :cond_0

    .line 861
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const/4 v1, 0x1

    .line 866
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
    .line 811
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 813
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->pickBlockedContacts()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$400(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)V

    .line 893
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 841
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcDivertedListActivity"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
