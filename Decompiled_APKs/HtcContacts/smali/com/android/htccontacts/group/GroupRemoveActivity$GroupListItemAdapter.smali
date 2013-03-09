.class public Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "GroupRemoveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupRemoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupListItemAdapter"
.end annotation


# instance fields
.field buffer:Ljava/lang/StringBuffer;

.field opts:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupRemoveActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 503
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->opts:Landroid/graphics/BitmapFactory$Options;

    .line 504
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    .line 507
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->opts:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 508
    return-void
.end method

.method private generateBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "opts"

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 578
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 580
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;

    .line 535
    .local v2, cache:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupNameIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, groupName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupMemberCountIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 539
    .local v4, groupMemberCount:I
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupIDIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 540
    .local v0, _id:I
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    #getter for: Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;
    invoke-static {v7}, Lcom/android/htccontacts/group/GroupRemoveActivity;->access$300(Lcom/android/htccontacts/group/GroupRemoveActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 541
    .local v3, checked:Z
    if-eqz v3, :cond_1

    .line 542
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 543
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget-object v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mItemMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :goto_0
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 551
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    iput-object v10, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    .line 555
    :cond_0
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    .line 556
    .local v6, photoView:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupPhotoIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 557
    .local v1, bytes:[B
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v1, v7}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->generateBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    .line 558
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 559
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->bitmapPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 565
    :goto_1
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 566
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 571
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v8, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 572
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v7, v10}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 573
    return-void

    .line 545
    .end local v1           #bytes:[B
    .end local v6           #photoView:Landroid/widget/ImageView;
    :cond_1
    iget-object v7, v2, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 546
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    iget-object v7, v7, Lcom/android/htccontacts/group/GroupRemoveActivity;->mItemMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 562
    .restart local v1       #bytes:[B
    .restart local v6       #photoView:Landroid/widget/ImageView;
    :cond_2
    const v7, 0x2080251

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 517
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v2, 0xcb

    invoke-direct {v0, p1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 518
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;-><init>()V

    .line 519
    .local v1, cache:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 520
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 521
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 523
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 524
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 512
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDirty:Z

    .line 513
    return-void
.end method
