.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 3137
    const v0, 0x7f030025

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 3138
    return-void
.end method

.method private generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3217
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x6c

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 3218
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 3151
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 3152
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 3153
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 3156
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    const-wide/16 v10, 0x0

    .line 3238
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;

    .line 3240
    .local v0, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
    const-string v8, "date"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3241
    .local v1, date:J
    const-string v8, "snippet"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3242
    .local v4, snippet:Ljava/lang/String;
    const-string v8, "unread_count"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3243
    .local v6, unreadCount:J
    const-string v8, "transport_type"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3250
    .local v5, type:Ljava/lang/String;
    cmp-long v8, v6, v10

    if-lez v8, :cond_1

    .line 3251
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    const v9, 0x20300bb

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 3256
    :goto_0
    const-string v8, "sms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3257
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {v8, v4}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 3265
    :cond_0
    :goto_1
    iput-wide v1, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->date:J

    .line 3266
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$4400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v1, v2, v9}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 3269
    .local v3, relativeDayString:Ljava/lang/String;
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v8, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 3271
    iput-wide v6, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->unReadCount:J

    .line 3274
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 3275
    return-void

    .line 3253
    .end local v3           #relativeDayString:Ljava/lang/String;
    .restart local p1
    :cond_1
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    const v9, 0x20300b1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0

    .line 3258
    :cond_2
    const-string v8, "mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3259
    cmp-long v8, v6, v10

    if-lez v8, :cond_3

    .line 3260
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    const v9, 0x7f0a03d7

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    goto :goto_1

    .line 3262
    :cond_3
    iget-object v8, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    const v9, 0x7f0a03d8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 3279
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 3307
    :goto_0
    return-void

    .line 3282
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    iget v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    if-lez v1, :cond_2

    .line 3283
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v3

    iget v3, v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    .line 3287
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 3288
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    .line 3289
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3290
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3291
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3293
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    .line 3294
    if-eqz p1, :cond_3

    .line 3295
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 3296
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3297
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mRowIDColumn:I

    .line 3298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mDataValid:Z

    .line 3300
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 3285
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const-string v2, ""

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 3302
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mRowIDColumn:I

    .line 3303
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mDataValid:Z

    .line 3305
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3142
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 3143
    .local v0, realCount:I
    if-nez v0, :cond_0

    .line 3144
    const/4 v0, 0x1

    .line 3146
    .end local v0           #realCount:I
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 3173
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 3174
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 3175
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3178
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 3311
    const/4 v0, 0x1

    return v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f0a017f

    .line 3194
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v2

    .line 3195
    .local v2, realCount:I
    if-lez v2, :cond_0

    .line 3196
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3212
    :goto_0
    return-object v3

    .line 3200
    :cond_0
    if-nez p2, :cond_1

    .line 3201
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x2bd

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 3202
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 3203
    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    .line 3204
    move-object p2, v0

    .line 3207
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_1
    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    .line 3208
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->setBottomRound(Z)V

    .line 3209
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->setTopRound(Z)V

    .line 3210
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p2

    .line 3212
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 3184
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;)V
    .locals 1
    .parameter "builder"
    .parameter "listItemCache"

    .prologue
    .line 3222
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getSingleLineText()Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    .line 3223
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    .line 3224
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$4300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3189
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 3162
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 3163
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 3164
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v1

    .line 3167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 3317
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3228
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3229
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 3230
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    .line 3231
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;)V

    .line 3232
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 3233
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 3346
    return-void
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3330
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 3335
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 3341
    const/4 v0, 0x0

    return v0
.end method
