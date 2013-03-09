.class public Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsOrderRemoveItemListAdapter.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;,
        Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    }
.end annotation


# instance fields
.field protected contactItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;",
            ">;"
        }
    .end annotation
.end field

.field idIdx:I

.field public isDirty:Z

.field protected mContext:Landroid/content/Context;

.field protected mNowPosition:I

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSeparaterView:Landroid/view/View;

.field nameIdx:I

.field photoIdIdx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "separaterView"

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 30
    iput v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->idIdx:I

    .line 31
    iput v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    .line 32
    iput v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->isDirty:Z

    .line 99
    iput v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mNowPosition:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 42
    iput-object p1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p4, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mSeparaterView:Landroid/view/View;

    .line 44
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->processCursor(Landroid/database/Cursor;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    .line 161
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mNowPosition:I

    .line 163
    .local v6, position:I
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mSeparaterView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 164
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050064

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 165
    .local v7, sectionHeight:I
    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v9, :cond_0

    .line 166
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mSeparaterView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mSeparaterView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 171
    .local v2, item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;

    .line 172
    .local v8, tag:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;
    iget-object v3, v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->displayName:Ljava/lang/CharSequence;

    .line 175
    .local v3, name:Ljava/lang/CharSequence;
    iget-object v1, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 176
    .local v1, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcListItemCheckBox;->setClickable(Z)V

    .line 177
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/android/htccontacts/customize/CustomizeResource;->getCustomizeResourceId(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 178
    iget-boolean v9, v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 179
    new-instance v9, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;

    invoke-direct {v9, p0, v2, v1}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;-><init>(Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;Lcom/htc/widget/HtcListItemCheckBox;)V

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 190
    iget-object v9, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v10, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0022

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 195
    :goto_0
    iget-object v0, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    .line 196
    .local v0, cache:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 198
    .local v5, photo:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v9, v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->PhotoID:J

    invoke-static {v9, v10}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 202
    :goto_1
    if-nez v5, :cond_3

    .line 203
    iget-object v9, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    const v10, 0x2080846

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 204
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    .line 209
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    const/4 v0, 0x0

    .line 213
    :cond_1
    return-void

    .line 192
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v5           #photo:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v9, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    .restart local v5       #photo:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v9, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iput-object v5, v8, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->cachebitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 199
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->processCursor(Landroid/database/Cursor;)V

    .line 222
    return-void
.end method

.method public changeCursorWithoutProcess(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 226
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    iget-wide v0, v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    .line 95
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOrderMemberList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mNowPosition:I

    .line 105
    if-nez p2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 111
    return-object v0

    .line 108
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 142
    new-instance v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;

    invoke-direct {v4}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;-><init>()V

    .line 144
    .local v4, tag:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;
    new-instance v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x1f6

    invoke-direct {v5, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v5, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    .line 146
    .local v1, imageButton2:Lcom/htc/widget/HtcListItemImageButton;
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v3

    .line 147
    .local v3, lineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    .line 148
    .local v0, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    .line 149
    .local v2, imageIndecater:Lcom/htc/widget/HtcListItemQuickContactBadge;
    const v6, 0x202001b

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemImageButton;->setId(I)V

    .line 150
    iget-object v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20804c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iput-object v0, v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 152
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    iput-object v6, v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    .line 153
    iput-object v3, v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 154
    iget-object v6, v4, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v5, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 156
    return-object v5
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->isDirty:Z

    .line 217
    return-void
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 245
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method protected processCursor(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, -0x1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    iget-object v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->idIdx:I

    if-ne v6, v7, :cond_0

    .line 117
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->idIdx:I

    .line 119
    :cond_0
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    if-ne v6, v7, :cond_1

    .line 120
    const-string v6, "display_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    .line 122
    :cond_1
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    if-ne v6, v7, :cond_2

    .line 123
    const-string v6, "photo_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    .line 126
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    :cond_3
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->idIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 129
    .local v0, id:J
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, name:Ljava/lang/String;
    iget v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 131
    .local v4, photoId:J
    new-instance v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;-><init>(JLjava/lang/CharSequence;)V

    .line 132
    .local v2, item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iput-wide v4, v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->PhotoID:J

    .line 133
    iget-object v6, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    .end local v0           #id:J
    .end local v2           #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #photoId:J
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 138
    :cond_5
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
            "Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;>;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->contactItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-void
.end method
