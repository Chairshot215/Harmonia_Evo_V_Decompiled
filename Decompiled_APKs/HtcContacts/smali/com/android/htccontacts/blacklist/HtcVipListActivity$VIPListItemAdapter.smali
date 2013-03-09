.class public Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "HtcVipListActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcVipListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VIPListItemAdapter"
.end annotation


# instance fields
.field mAccountIdx:I

.field mContactIdx:I

.field mDisplayNameIdx:I

.field mIdChatCapabilityId:I

.field mIdPresenceId:I

.field mIdxLookupKey:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    .line 795
    invoke-direct {p0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 796
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 797
    if-eqz p3, :cond_0

    .line 800
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    .line 801
    const-string v1, "lookup"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdxLookupKey:I

    .line 802
    const-string v1, "display_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mDisplayNameIdx:I

    .line 803
    const-string v1, "ext_account_Type"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    .line 804
    const-string v1, "contact_presence"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdPresenceId:I

    .line 805
    const-string v1, "contact_chat_capability"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdChatCapabilityId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 812
    :cond_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcVipListActivity"

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
.method protected bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v8, 0x20804bc

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 848
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 850
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v4, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdPresenceId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdPresenceId:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 851
    iget v4, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdPresenceId:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 852
    .local v2, presence_id:I
    iget v4, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdChatCapabilityId:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 853
    .local v1, chatCapability:I
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 855
    new-instance v3, Lcom/android/htccontacts/widget/ImPresence;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/htccontacts/widget/ImPresence;-><init>(IIZ)V

    .line 856
    .local v3, status:Lcom/android/htccontacts/widget/ImPresence;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/ImPresence;->hasIm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 858
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/ImPresence;->getPresence()I

    move-result v5

    invoke-static {v5}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 874
    .end local v1           #chatCapability:I
    .end local v2           #presence_id:I
    .end local v3           #status:Lcom/android/htccontacts/widget/ImPresence;
    :goto_0
    return-void

    .line 861
    .restart local v1       #chatCapability:I
    .restart local v2       #presence_id:I
    .restart local v3       #status:Lcom/android/htccontacts/widget/ImPresence;
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 862
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0

    .line 868
    .end local v1           #chatCapability:I
    .end local v2           #presence_id:I
    .end local v3           #status:Lcom/android/htccontacts/widget/ImPresence;
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 869
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0

    .line 871
    :cond_3
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 825
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 827
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 829
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    :cond_0
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 834
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-super {p0, p2, p3, v6, v5}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 837
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 838
    .local v3, personId:J
    iget v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, lookup:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 840
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    invoke-static {v3, v4, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 843
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 844
    return-void
.end method

.method public getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 908
    const/4 v3, 0x0

    .line 909
    .local v3, uri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    if-gez v5, :cond_0

    move-object v4, v3

    .line 921
    .end local v3           #uri:Landroid/net/Uri;
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 912
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 914
    .local v0, contactId:J
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdxLookupKey:I

    if-ltz v5, :cond_1

    .line 915
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mIdxLookupKey:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .end local v2           #lookupKey:Ljava/lang/String;
    :goto_1
    move-object v4, v3

    .line 921
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 919
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
    .line 888
    if-nez p1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 890
    const v1, 0x2020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 891
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 893
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-object p1
.end method

.method public isSimContactItem(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 898
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    if-ltz v1, :cond_0

    .line 899
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    const/4 v1, 0x1

    .line 904
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
    .line 817
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 819
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcVipListActivity;->pickVIPContacts()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->access$300(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)V

    .line 931
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 879
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcVipListActivity"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
