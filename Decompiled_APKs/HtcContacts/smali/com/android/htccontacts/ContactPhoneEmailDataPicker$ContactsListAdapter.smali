.class final Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactsListAdapter"
.end annotation


# instance fields
.field builder:Ljava/lang/StringBuilder;

.field private mAlphabet:Ljava/lang/String;

.field private mGroupingColumnIndex:I

.field protected mIdxSortKey:I

.field protected mIdxSortKeyAlt:I

.field mIndexer:Landroid/widget/AlphabetIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEnableHideSubHeaderIfEmpty:Z

.field private mIsSubHeaderEnabled:Z

.field protected mLoading:Z

.field private mSortIndexerColumnIdex:I

.field protected searchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 643
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 634
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    .line 635
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 637
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mLoading:Z

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getAlphabet(Landroid/content/Context;)V

    .line 645
    invoke-direct {p0, p4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->initColumnIndex(Landroid/database/Cursor;)V

    .line 646
    invoke-virtual {p0, p4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 647
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mAutoRequery:Z

    .line 648
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 651
    return-void
.end method

.method private bindGroupPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "photoView"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 1201
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    .line 1202
    .local v5, oldInfo:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 1203
    .local v6, position:I
    new-instance v3, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v6, v8, v9, v4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;-><init>(IJLjava/lang/String;)V

    .line 1204
    .local v3, info:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1207
    const/4 v1, 0x0

    .line 1208
    .local v1, bytes:[B
    const-string v8, "photo"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1209
    .local v2, index:I
    if-lez v2, :cond_0

    .line 1210
    if-nez v5, :cond_1

    .line 1211
    .local v4, oldBitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1212
    if-eqz v1, :cond_2

    array-length v8, v1

    if-lez v8, :cond_2

    .line 1213
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1215
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1216
    iput-object v0, v3, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 1224
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v4, :cond_0

    .line 1225
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1229
    .end local v4           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 1210
    :cond_1
    iget-object v4, v5, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1218
    .restart local v4       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p4}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v7

    .line 1220
    .local v7, resId:I
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_1
.end method

.method private checkBottom(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cache"
    .parameter "cursor"

    .prologue
    .line 1305
    const/4 v7, 0x0

    .line 1306
    .local v7, returnValue:Z
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1307
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1308
    .local v2, cursorPosition:I
    iget v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1310
    .local v9, thisItemName:Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    invoke-super {p0, v10}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1311
    .local v6, o:Ljava/lang/Object;
    instance-of v10, v6, Landroid/database/Cursor;

    if-nez v10, :cond_0

    .line 1312
    const/4 v10, 0x0

    .line 1373
    .end local v2           #cursorPosition:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v9           #thisItemName:Ljava/lang/String;
    :goto_0
    return v10

    .restart local v2       #cursorPosition:I
    .restart local v6       #o:Ljava/lang/Object;
    .restart local v9       #thisItemName:Ljava/lang/String;
    :cond_0
    move-object v0, v6

    .line 1314
    check-cast v0, Landroid/database/Cursor;

    .line 1315
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1316
    iget v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, nextItemName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1321
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1368
    .end local v4           #nextItemName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #cursorPosition:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v9           #thisItemName:Ljava/lang/String;
    :goto_2
    move v10, v7

    .line 1373
    goto :goto_0

    .line 1324
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #cursorPosition:I
    .restart local v4       #nextItemName:Ljava/lang/String;
    .restart local v6       #o:Ljava/lang/Object;
    .restart local v9       #thisItemName:Ljava/lang/String;
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1328
    :cond_4
    const/4 v7, 0x1

    .line 1329
    invoke-virtual {p1, v7}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1336
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1338
    .local v1, currSect:I
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v5

    .line 1341
    .local v5, nextSect:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_6

    const/4 v10, -0x1

    if-eq v5, v10, :cond_8

    .line 1342
    :cond_6
    if-eq v1, v5, :cond_7

    .line 1343
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1344
    const/4 v7, 0x1

    goto :goto_1

    .line 1346
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1347
    const/4 v7, 0x0

    goto :goto_1

    .line 1351
    :cond_8
    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v8

    .line 1352
    .local v8, thisItemChar:C
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v3

    .line 1354
    .local v3, nextItemChar:C
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v10, v11, :cond_9

    .line 1356
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1357
    const/4 v7, 0x1

    goto :goto_1

    .line 1359
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1360
    const/4 v7, 0x0

    goto :goto_1

    .line 1370
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #currSect:I
    .end local v2           #cursorPosition:I
    .end local v3           #nextItemChar:C
    .end local v4           #nextItemName:Ljava/lang/String;
    .end local v5           #nextSect:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #thisItemChar:C
    .end local v9           #thisItemName:Ljava/lang/String;
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setBottomRound(Z)V

    .line 1371
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private checkTop(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cache"
    .parameter "cursor"

    .prologue
    .line 1377
    const/4 v6, 0x0

    .line 1378
    .local v6, returnValue:Z
    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->checkFirstItemTopRoundShow()Z

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1380
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->checkFirstItemTopRoundShow()Z

    move-result v6

    :goto_0
    move v10, v6

    .line 1439
    :goto_1
    return v10

    .line 1382
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1383
    .local v2, cursorPosition:I
    iget v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1385
    .local v8, thisItemName:Ljava/lang/String;
    add-int/lit8 v10, v2, -0x1

    invoke-super {p0, v10}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 1386
    .local v4, o:Ljava/lang/Object;
    instance-of v10, v4, Landroid/database/Cursor;

    if-nez v10, :cond_1

    .line 1387
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 1389
    check-cast v0, Landroid/database/Cursor;

    .line 1390
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1391
    iget v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1394
    .local v5, prevItemName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1396
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1397
    const/4 v6, 0x0

    .line 1437
    .end local v5           #prevItemName:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    goto :goto_0

    .line 1400
    .restart local v5       #prevItemName:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1404
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1405
    const/4 v6, 0x1

    goto :goto_2

    .line 1409
    :cond_6
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v3

    .line 1410
    .local v3, listItemChar:C
    invoke-static {v5}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v7

    .line 1412
    .local v7, thisChar:C
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v9

    .line 1414
    .local v9, upperSect:I
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1417
    .local v1, currSect:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    const/4 v10, -0x1

    if-eq v1, v10, :cond_9

    .line 1418
    :cond_7
    if-eq v9, v1, :cond_8

    .line 1419
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1420
    const/4 v6, 0x1

    goto :goto_2

    .line 1422
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1423
    const/4 v6, 0x0

    goto :goto_2

    .line 1426
    :cond_9
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v10, v11, :cond_a

    .line 1428
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1429
    const/4 v6, 0x1

    goto :goto_2

    .line 1431
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 1432
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private final createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1246
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1248
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method private getGroupingColumnIndex()I
    .locals 3

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getKeyNameIndex()I

    move-result v0

    .line 783
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 787
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 788
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    .line 794
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 789
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 790
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getIndexerColumnIndex()I
    .locals 3

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getKeyNameIndex()I

    move-result v0

    .line 767
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 770
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 771
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    .line 777
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 772
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 773
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 911
    if-nez p2, :cond_0

    .line 912
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 923
    const v1, 0x2020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 925
    .local v0, label:Landroid/widget/TextView;
    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 927
    .end local v0           #label:Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method

.method private initColumnIndex(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    const-string v0, "photo_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 739
    const-string v0, "ext_photo_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    .line 741
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKey:I

    .line 743
    const-string v0, "sort_key_alt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    .line 746
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 836
    const/4 v0, 0x0

    .line 838
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final bindForData(Landroid/view/View;Landroid/database/Cursor;Lcom/android/htccontacts/util/PhotoUtils;Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Ljava/util/HashMap;)V
    .locals 29
    .parameter "view"
    .parameter "c"
    .parameter "photoUtility"
    .parameter "sb"
    .parameter "phonesb"
    .parameter "cdsb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/database/Cursor;",
            "Lcom/android/htccontacts/util/PhotoUtils;",
            "Landroid/util/SparseBooleanArray;",
            "Landroid/util/SparseBooleanArray;",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p7, groupcontactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    .line 961
    .local v26, obj:Ljava/lang/Object;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 963
    .local v25, name:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, accountType:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 965
    .local v8, label:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, mimetype:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 970
    .local v13, data:Ljava/lang/String;
    const/16 v3, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 972
    .local v11, contactId:I
    const-string v3, "group_is_read_only"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 973
    .local v18, groupIsReadOnlyIndex:I
    const/16 v19, -0x1

    .line 974
    .local v19, groupIsReadonly:I
    if-lez v18, :cond_0

    .line 975
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 978
    :cond_0
    const/4 v7, -0x1

    .line 979
    .local v7, type:I
    const/16 v20, -0x1

    .line 981
    .local v20, id:I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 982
    const/16 v20, -0x1

    .line 987
    :goto_0
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 988
    const/4 v7, -0x1

    .line 993
    :goto_1
    if-eqz v26, :cond_1

    move-object/from16 v0, v26

    instance-of v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    if-nez v3, :cond_4

    .line 1191
    .end local p1
    :cond_1
    :goto_2
    return-void

    .line 984
    .restart local p1
    :cond_2
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    goto :goto_0

    .line 990
    :cond_3
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_1

    :cond_4
    move-object/from16 v28, v26

    .line 997
    check-cast v28, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    .line 999
    .local v28, tag:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;
    const/16 v22, 0x0

    .line 1002
    .local v22, isPhoneOrMail:I
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1003
    const/16 v22, 0x1

    .line 1010
    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->dataType:I

    .line 1013
    const/4 v12, -0x1

    .line 1015
    .local v12, count:I
    const/16 v3, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1016
    const/4 v12, -0x1

    .line 1021
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1023
    const/4 v9, 0x0

    .line 1025
    .local v9, charseq:Ljava/lang/CharSequence;
    const/16 v23, 0x0

    .line 1026
    .local v23, mainText:Ljava/lang/CharSequence;
    const/16 v27, 0x0

    .line 1028
    .local v27, secondText:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_11

    .line 1029
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v5, 0x7f0a016e

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 1036
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1038
    if-nez v9, :cond_5

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v5, 0x7f0a005f

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1041
    :cond_5
    if-eqz v9, :cond_6

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    if-eqz v13, :cond_7

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1052
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-eqz v3, :cond_8

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1110
    :cond_8
    :goto_6
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-eqz v3, :cond_a

    .line 1112
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->obtainMarkSearchNameText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1113
    .local v24, markedSeq:Ljava/lang/CharSequence;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1114
    move-object/from16 v23, v24

    .line 1116
    :cond_9
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1117
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 1121
    .end local v24           #markedSeq:Ljava/lang/CharSequence;
    :cond_a
    const/16 v21, 0x0

    .line 1123
    .local v21, isChecked:Z
    if-eqz v4, :cond_18

    const-string v3, "eas_accounttype"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1127
    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    .line 1146
    :goto_7
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v3, :cond_b

    .line 1147
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1150
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1152
    .local v14, dataKey:Ljava/lang/String;
    if-eqz v14, :cond_c

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->checkTop(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;Landroid/database/Cursor;)Z

    move-result v17

    .line 1157
    .local v17, drawTop:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->checkBottom(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;Landroid/database/Cursor;)Z

    move-result v16

    .line 1159
    .local v16, drawBottom:Z
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1160
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_1

    .line 1161
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_1e

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_1e

    .line 1162
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1004
    .end local v9           #charseq:Ljava/lang/CharSequence;
    .end local v12           #count:I
    .end local v14           #dataKey:Ljava/lang/String;
    .end local v16           #drawBottom:Z
    .end local v17           #drawTop:Z
    .end local v21           #isChecked:Z
    .end local v23           #mainText:Ljava/lang/CharSequence;
    .end local v27           #secondText:Ljava/lang/CharSequence;
    .restart local p1
    :cond_d
    if-eqz v6, :cond_e

    .line 1005
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1007
    :cond_e
    const/16 v22, 0x2

    goto/16 :goto_3

    .line 1018
    .restart local v12       #count:I
    :cond_f
    const/16 v3, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto/16 :goto_4

    .line 1033
    .restart local v9       #charseq:Ljava/lang/CharSequence;
    .restart local v23       #mainText:Ljava/lang/CharSequence;
    .restart local v27       #secondText:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v23, v25

    goto/16 :goto_5

    .line 1055
    :cond_11
    if-nez v22, :cond_16

    .line 1057
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v5, 0x7f0a016e

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 1063
    :goto_8
    if-gez v7, :cond_15

    .line 1064
    move-object v9, v8

    .line 1070
    :goto_9
    if-nez v9, :cond_12

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v5, 0x7f0a0127

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1074
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    if-eqz v13, :cond_13

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1084
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-eqz v3, :cond_8

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1060
    :cond_14
    move-object/from16 v23, v25

    goto :goto_8

    .line 1066
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    .line 1088
    :cond_16
    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_8

    .line 1089
    const/4 v15, 0x0

    .line 1090
    .local v15, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 1094
    if-eqz v15, :cond_17

    .line 1095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1104
    :goto_a
    const/16 v27, 0x0

    .line 1105
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-eqz v3, :cond_8

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v3, v1, v5, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->bindGroupPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1102
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v5, 0x7f0a016e

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    goto :goto_a

    .line 1130
    .end local v15           #displayName:Ljava/lang/String;
    .restart local v21       #isChecked:Z
    :cond_18
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_19

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_1a

    .line 1131
    :cond_19
    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    goto/16 :goto_7

    .line 1132
    :cond_1a
    if-nez v22, :cond_1b

    .line 1133
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    goto/16 :goto_7

    .line 1135
    :cond_1b
    const/4 v10, 0x0

    .line 1136
    .local v10, checked:Ljava/lang/Boolean;
    if-eqz v25, :cond_1d

    .line 1137
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #checked:Ljava/lang/Boolean;
    check-cast v10, Ljava/lang/Boolean;

    .line 1138
    .restart local v10       #checked:Ljava/lang/Boolean;
    if-nez v10, :cond_1c

    const/16 v21, 0x0

    .line 1139
    :goto_b
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1138
    :cond_1c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    goto :goto_b

    .line 1141
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 1164
    .end local v10           #checked:Ljava/lang/Boolean;
    .restart local v14       #dataKey:Ljava/lang/String;
    .restart local v16       #drawBottom:Z
    .restart local v17       #drawTop:Z
    :cond_1e
    if-nez v17, :cond_1f

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_1f

    .line 1165
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1167
    .restart local p1
    :cond_1f
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_20

    if-nez v16, :cond_20

    .line 1168
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1171
    .restart local p1
    :cond_20
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1176
    .restart local p1
    :cond_21
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_1

    .line 1177
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_22

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_22

    .line 1178
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1180
    .restart local p1
    :cond_22
    if-nez v17, :cond_23

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_23

    .line 1181
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1183
    .restart local p1
    :cond_23
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_24

    if-nez v16, :cond_24

    .line 1184
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2

    .line 1187
    .restart local p1
    :cond_24
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_2
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v3

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/HashMap;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->bindForData(Landroid/view/View;Landroid/database/Cursor;Lcom/android/htccontacts/util/PhotoUtils;Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Ljava/util/HashMap;)V

    .line 1197
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 668
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-boolean v4, v4, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterMode:Z

    if-eqz v4, :cond_2

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, currentKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 671
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 672
    .local v2, s:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .end local v2           #s:Landroid/text/Editable;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v4, v4, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v4, v4, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 678
    if-eqz p1, :cond_2

    .line 680
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 726
    .end local v0           #currentKey:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 694
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    .line 695
    .local v3, tmpCursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 696
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 697
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 699
    .end local v3           #tmpCursor:Landroid/database/Cursor;
    :cond_3
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    .line 700
    if-eqz p1, :cond_5

    .line 701
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 702
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 703
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mRowIDColumn:I

    .line 704
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mDataValid:Z

    .line 706
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->notifyDataSetChanged()V

    .line 716
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->initColumnIndex(Landroid/database/Cursor;)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 718
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 720
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 721
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_4

    .line 722
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->setFastScrollSectionsDirty()V

    .line 725
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const-wide/16 v5, 0xc8

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->undateHeaderButtonStateDelayed(J)V
    invoke-static {v4, v5, v6}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;J)V

    goto :goto_0

    .line 708
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mRowIDColumn:I

    .line 709
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mDataValid:Z

    .line 711
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method protected checkFirstItemTopRoundShow()Z
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x0

    .line 950
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v0

    goto :goto_0
.end method

.method protected getAlphabet(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 931
    const v0, 0x1040419

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    .line 933
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 867
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    .line 868
    .local v0, count:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 869
    add-int/lit8 v0, v0, 0x1

    .line 871
    .end local v0           #count:I
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 876
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 877
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 879
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 884
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 885
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 887
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 893
    if-nez p1, :cond_0

    .line 894
    const/4 v0, 0x0

    .line 898
    :goto_0
    return v0

    .line 896
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getKeyNameIndex()I
    .locals 4

    .prologue
    .line 1270
    const/4 v1, -0x1

    .line 1272
    .local v1, index:I
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1273
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1279
    :cond_0
    :goto_0
    return v1

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ContactPhoneEmailDataPicker"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 800
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 802
    const/4 v1, 0x0

    .line 809
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 806
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 809
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    .line 814
    const/4 v0, -0x1

    .line 816
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 732
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 937
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 938
    if-nez p1, :cond_0

    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 943
    :goto_0
    return-object v0

    .line 941
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 943
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 849
    const/4 v0, 0x0

    .line 851
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 856
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 857
    if-nez p1, :cond_0

    .line 858
    const/4 v0, 0x0

    .line 862
    :goto_0
    return v0

    .line 860
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 862
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isHideSubHeaderIfEmpty()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowSubHeader()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->isHideSubHeaderIfEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1234
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v1

    .line 1235
    .local v1, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    invoke-direct {v0, v2, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;-><init>(ZZ)V

    .line 1236
    .local v0, tag:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1237
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 1238
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 1240
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1241
    return-object v1
.end method

.method public obtainMarkSearchNameText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "textViewText"

    .prologue
    const/4 v0, 0x0

    .line 1284
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-object v0

    .line 1288
    :cond_1
    const/4 v1, 0x0

    .line 1289
    .local v1, text:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1290
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1292
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1295
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1301
    .local v0, charseq:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const/4 v3, 0x1

    #setter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$902(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)Z

    .line 656
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getFilterText()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, filterText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 659
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_1

    .line 660
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #filterText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const/4 v3, 0x0

    #setter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$902(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)Z

    .line 664
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :cond_1
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterMode:Z

    .line 1257
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iput-object p1, v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->doFilterByFrequencyGroup(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1264
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    .line 1265
    return-object v0

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public setAutoHideSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 825
    return-void
.end method

.method public setSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    .line 821
    return-void
.end method

.method updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getIndexerColumnIndex()I

    move-result v0

    .line 750
    .local v0, newIndex:I
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_0

    .line 751
    new-instance v1, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 760
    :goto_0
    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mSortIndexerColumnIdex:I

    .line 761
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getGroupingColumnIndex()I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mGroupingColumnIndex:I

    .line 762
    return-void

    .line 753
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mSortIndexerColumnIdex:I

    if-eq v0, v1, :cond_1

    .line 754
    new-instance v1, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
