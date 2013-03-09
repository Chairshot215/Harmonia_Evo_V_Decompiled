.class public Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsOrderItemListAdapter"
.end annotation


# instance fields
.field contactItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;",
            ">;"
        }
    .end annotation
.end field

.field idIdx:I

.field nameIdx:I

.field photoIdIdx:I

.field final synthetic this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    const/4 v1, -0x1

    .line 200
    iput-object p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    .line 201
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    .line 197
    iput v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->idIdx:I

    .line 198
    iput v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->nameIdx:I

    .line 199
    iput v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->photoIdIdx:I

    .line 202
    invoke-direct {p0, p4}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->processCursor(Landroid/database/Cursor;)V

    .line 203
    return-void
.end method

.method private processCursor(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, -0x1

    .line 270
    if-eqz p1, :cond_5

    .line 271
    iget-object v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->idIdx:I

    if-ne v6, v7, :cond_0

    .line 273
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->idIdx:I

    .line 275
    :cond_0
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->nameIdx:I

    if-ne v6, v7, :cond_1

    .line 276
    const-string v6, "display_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->nameIdx:I

    .line 278
    :cond_1
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->photoIdIdx:I

    if-ne v6, v7, :cond_2

    .line 279
    const-string v6, "photo_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->photoIdIdx:I

    .line 282
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 284
    :cond_3
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->idIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 285
    .local v0, id:J
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->nameIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, name:Ljava/lang/String;
    iget v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->photoIdIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 287
    .local v4, photoId:J
    new-instance v2, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;-><init>(JLjava/lang/CharSequence;)V

    .line 288
    .local v2, item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    iget-object v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 291
    .end local v0           #id:J
    .end local v2           #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #photoId:J
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 293
    :cond_5
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 220
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 222
    .local v4, position:I
    iget-object v6, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;

    .line 223
    .local v1, item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;

    .line 225
    .local v5, tag:Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;
    iget-object v2, v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->displayName:Ljava/lang/CharSequence;

    .line 226
    .local v2, name:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    iget-object v6, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->primaryTextView:Landroid/widget/TextView;

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 232
    :goto_0
    iget-object v0, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    .line 234
    .local v0, cache:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 237
    .local v3, photo:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v6, v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->_id:J

    iget-object v8, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    invoke-virtual {v8}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/htccontacts/util/PhotoUtils;->loadContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 242
    :goto_1
    if-nez v3, :cond_2

    .line 243
    iget-object v6, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->iconView:Landroid/widget/ImageView;

    const v7, 0x2080846

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 244
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    .line 251
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    const/4 v0, 0x0

    .line 255
    :cond_0
    return-void

    .line 229
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    iput-object v3, v5, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 238
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->processCursor(Landroid/database/Cursor;)V

    .line 267
    return-void
.end method

.method public getOrderMemberList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V

    .line 211
    .local v0, tag:Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;
    const v2, 0x202001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->iconView:Landroid/widget/ImageView;

    .line 212
    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;->primaryTextView:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/group/ArrangeMemberActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$402(Lcom/android/htccontacts/group/ArrangeMemberActivity;Z)Z

    .line 260
    return-void
.end method

.method public reassignOrderMemberList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    return-void
.end method
