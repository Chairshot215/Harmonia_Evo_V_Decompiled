.class public Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;
.super Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsItemPickerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    .line 2233
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 2234
    return-void
.end method


# virtual methods
.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    const/4 v8, 0x0

    .line 2554
    iget v6, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    if-gez v6, :cond_0

    .line 2598
    :goto_0
    return-void

    .line 2558
    :cond_0
    if-eqz p5, :cond_3

    const-string v6, "com.android.contacts.Groups"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2559
    iget v6, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2560
    .local v5, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2561
    .local v1, groupIsReadOnly:I
    sget v6, Lcom/android/htccontacts/ContactListSearchPicker;->mIdxGroupIsReadOnly:I

    if-ltz v6, :cond_1

    .line 2562
    sget v6, Lcom/android/htccontacts/ContactListSearchPicker;->mIdxGroupIsReadOnly:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2564
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3100(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, displayTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v6, v6, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2566
    move-object v2, v0

    .line 2567
    .local v2, markStr:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v7, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v7, v7, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/android/htccontacts/ContactListSearchPicker;->obtainMarkSearchKeyString(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2568
    iget-object v6, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2571
    .end local v2           #markStr:Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v6, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2577
    .end local v0           #displayTitle:Ljava/lang/String;
    .end local v1           #groupIsReadOnly:I
    .end local v5           #title:Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v6, v7}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2578
    iget-object v6, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget v4, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2579
    .local v4, size:I
    if-eqz v4, :cond_6

    .line 2580
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v6, v6, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2581
    new-instance v3, Ljava/lang/String;

    iget-object v6, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v3, v6, v8, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2582
    .local v3, name:Ljava/lang/String;
    move-object v2, v3

    .line 2583
    .restart local v2       #markStr:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v7, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v7, v7, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lcom/android/htccontacts/ContactListSearchPicker;->obtainMarkSearchKeyString(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2586
    if-nez v2, :cond_4

    .line 2587
    move-object v2, v3

    .line 2589
    :cond_4
    iget-object v6, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2592
    .end local v2           #markStr:Ljava/lang/CharSequence;
    .end local v3           #name:Ljava/lang/String;
    :cond_5
    iget-object v6, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v7, v7, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText([CII)V

    goto/16 :goto_0

    .line 2596
    :cond_6
    iget-object v6, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto/16 :goto_0
.end method

.method protected bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2388
    if-eqz p5, :cond_7

    const-string v7, "com.android.contacts.Groups"

    invoke-virtual {p5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2389
    const/4 v3, 0x0

    .line 2390
    .local v3, obtainPhoto:Z
    const-string v7, "photo"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2391
    .local v2, groupPhotoIdx:I
    const/4 v0, 0x0

    .line 2392
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-ltz v2, :cond_0

    .line 2393
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2394
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 2395
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2397
    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-lez v7, :cond_1

    .line 2399
    const/4 v3, 0x1

    .line 2408
    .end local v1           #bytes:[B
    :cond_0
    :goto_0
    iget-object v7, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v4

    .line 2409
    .local v4, quickContactBadge:Lcom/htc/widget/QuickContactBadge;
    if-nez v4, :cond_2

    .line 2436
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #groupPhotoIdx:I
    .end local v3           #obtainPhoto:Z
    .end local v4           #quickContactBadge:Lcom/htc/widget/QuickContactBadge;
    :goto_1
    return-void

    .line 2402
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bytes:[B
    .restart local v2       #groupPhotoIdx:I
    .restart local v3       #obtainPhoto:Z
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2403
    const/4 v0, 0x0

    goto :goto_0

    .line 2412
    .end local v1           #bytes:[B
    .restart local v4       #quickContactBadge:Lcom/htc/widget/QuickContactBadge;
    :cond_2
    if-eqz v3, :cond_4

    .line 2413
    invoke-virtual {v4, v0}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2414
    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2415
    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2417
    :cond_3
    iput-object v0, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    .line 2431
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2420
    :cond_4
    if-eqz v0, :cond_5

    .line 2421
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2423
    :cond_5
    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2424
    iget-object v7, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2426
    :cond_6
    iget v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2427
    .local v6, title:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v5

    .line 2428
    .local v5, resId:I
    invoke-virtual {v4, v5}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_2

    .line 2435
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #groupPhotoIdx:I
    .end local v3           #obtainPhoto:Z
    .end local v4           #quickContactBadge:Lcom/htc/widget/QuickContactBadge;
    .end local v5           #resId:I
    .end local v6           #title:Ljava/lang/String;
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2311
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 2312
    const v3, -0x566fffab

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v4}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2000(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const v3, -0x766fff9e

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v4}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2100(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2314
    :cond_0
    const/4 v1, 0x0

    .line 2317
    .local v1, label:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 2320
    .local v0, dataSet:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2200(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 2321
    .local v2, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p5, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2325
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-eqz v3, :cond_1

    .line 2326
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2327
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 2330
    .end local v0           #dataSet:Ljava/lang/String;
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v2           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_1
    return-void
.end method

.method protected bindStatus(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2336
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z
    invoke-static {v4}, Lcom/android/htccontacts/ContactListSearchPicker;->access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v2

    .line 2338
    .local v2, supportStrongQuery:Z
    if-nez v2, :cond_1

    .line 2339
    if-eqz p4, :cond_0

    .line 2340
    iget-object v4, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2345
    :cond_1
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    .line 2349
    .local v3, targetDataIndex:I
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mMimetypeIdx:I

    if-ltz v4, :cond_2

    .line 2350
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mMimetypeIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2351
    .local v1, mimetype:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2353
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2354
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    .line 2370
    .end local v1           #mimetype:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 2371
    .local v0, criteria:Ljava/lang/CharSequence;
    if-ltz v3, :cond_3

    .line 2372
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2375
    :cond_3
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSnippetIdx:I

    if-ltz v4, :cond_4

    .line 2376
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSnippetIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2379
    :cond_4
    if-eqz p4, :cond_0

    .line 2380
    iget-object v4, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2355
    .end local v0           #criteria:Ljava/lang/CharSequence;
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_5
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2356
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    goto :goto_1

    .line 2357
    :cond_6
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2358
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    goto :goto_1

    .line 2359
    :cond_7
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2360
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    goto :goto_1

    .line 2361
    :cond_8
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2362
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    goto :goto_1

    .line 2363
    :cond_9
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2365
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDisplayTitileIdx:I

    goto :goto_1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2281
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2284
    .local v4, obj:Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    if-nez v6, :cond_1

    .line 2306
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v4

    .line 2288
    check-cast v5, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    .line 2290
    .local v5, tag:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    iget-object v0, v5, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 2292
    .local v0, box:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 2293
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v6}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1800(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v6

    const/high16 v7, 0x40

    and-int/2addr v6, v7

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v6, v6, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v6, :cond_3

    .line 2294
    :cond_2
    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v2, v6

    .line 2295
    .local v2, id:J
    if-eqz v0, :cond_0

    .line 2296
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 2297
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v6, v6, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mDefaultCheckAll:Z
    invoke-static {v7}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1900(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2298
    .local v1, check:Z
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 2301
    .end local v1           #check:Z
    .end local v2           #id:J
    :cond_3
    if-eqz v0, :cond_0

    .line 2302
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 2441
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2450
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    iput-object v1, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateChabgeObserver:Landroid/database/ContentObserver;

    .line 2451
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object v1, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateSetObserver:Landroid/database/DataSetObserver;

    .line 2452
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2602(Z)Z

    .line 2472
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2473
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2700(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v0

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterMode:Z

    if-ne v0, v2, :cond_1

    .line 2475
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->onFilterCompleteUIActionAfterChangeCursor()V

    .line 2479
    :cond_1
    return-void

    .line 2454
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2456
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2458
    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2459
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2463
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2602(Z)Z

    .line 2468
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 2460
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2238
    const/4 v0, 0x0

    .line 2239
    .local v0, item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1600(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v1

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v1, v1, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v1, :cond_1

    .line 2240
    :cond_0
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v0           #item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 2245
    .restart local v0       #item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_0
    return-object v0

    .line 2243
    :cond_1
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v0           #item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/16 v1, 0xc9

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v0       #item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    goto :goto_0
.end method

.method protected initContactListItemCache(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 1
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 2249
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 2250
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 2251
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 2252
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 2253
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2257
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2259
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    .line 2261
    .local v1, tag:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$1700(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v3

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v3, :cond_1

    .line 2262
    :cond_0
    iget-object v0, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 2263
    .local v0, box:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v3, :cond_1

    .line 2264
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mDeletionBoxResId:I

    if-lez v3, :cond_1

    .line 2265
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mDeletionBoxResId:I

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 2276
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_1
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 2602
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->onContentChanged()V

    .line 2603
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3200(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsFreshing:Z

    .line 2606
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 2518
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2519
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2521
    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2522
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2523
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2602(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2530
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2531
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3000(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 2532
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterMode:Z

    .line 2537
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2539
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->onFilterComplete(Landroid/database/Cursor;)V

    .line 2542
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2548
    :cond_2
    return-object v0

    .line 2524
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2483
    if-nez p1, :cond_0

    .line 2514
    :goto_0
    return-void

    .line 2486
    :cond_0
    const v1, -0x566fffab

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2800(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const v1, -0x766fff9e

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2900(Lcom/android/htccontacts/ContactListSearchPicker;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2489
    :cond_1
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 2491
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 2493
    const-string v1, "starred"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStarred:I

    .line 2496
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 2498
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxHasPhoneNum:I

    .line 2499
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    .line 2500
    const-string v1, "account_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    .line 2502
    const-string v1, "sort_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    .line 2504
    const-string v1, "sort_key_alt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    .line 2507
    const-string v1, "group_is_read_only"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/htccontacts/ContactListSearchPicker;->mIdxGroupIsReadOnly:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2508
    :catch_0
    move-exception v0

    .line 2509
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ContactListSearchPicker"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2512
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndex(Landroid/database/Cursor;)V

    goto :goto_0
.end method
