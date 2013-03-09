.class Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;
    }
.end annotation


# instance fields
.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mPosArray:[I

.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    .line 155
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 187
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const v3, 0x1040419

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    .line 156
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabetArray:[Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mPosArray:[I

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, mDisplayNamesFirstChar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 161
    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    iget-object v2, v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->primaryText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 166
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mPosArray:[I

    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_1
    return-void
.end method

.method private bindView(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;)V
    .locals 6
    .parameter "item"
    .parameter "itemdata"

    .prologue
    const v5, 0x2080846

    .line 266
    iget-wide v1, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->photo_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 267
    iget-wide v1, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->photo_id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->primaryText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 278
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->secondaryText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 280
    iget-boolean v1, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v2, p2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 283
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;-><init>(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_0
    return-void

    .line 271
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 274
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    iget-object v1, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->raw_contact_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 221
    .local v0, value:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 204
    .local v0, itemdata:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    iget v1, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->viewType:I

    return v1
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mPosArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f070014

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 225
    const-string v4, "DeDuplicationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, rtn:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 230
    .local v1, itemdata:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    if-eqz p2, :cond_0

    iget v5, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->viewType:I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_3

    .line 231
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcListItem;

    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    .local v2, newView:Lcom/htc/widget/HtcListItem;
    new-instance v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;

    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {v0, p0, v4}, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;-><init>(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;Landroid/content/Context;)V

    .line 234
    .local v0, item:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;
    iget-boolean v4, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-nez v4, :cond_1

    .line 235
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 237
    :cond_1
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 238
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 240
    iget-boolean v4, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-nez v4, :cond_2

    .line 241
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 243
    :cond_2
    invoke-virtual {v2, v9, v0}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    .line 244
    iget v4, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->viewType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 246
    move-object v3, v2

    .line 260
    .end local v2           #newView:Lcom/htc/widget/HtcListItem;
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->bindView(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;)V

    .line 262
    return-object v3

    .line 248
    .end local v0           #item:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;
    :cond_3
    invoke-virtual {p2, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;

    .line 249
    .restart local v0       #item:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;
    iget-boolean v4, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-eqz v4, :cond_4

    .line 250
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 257
    :goto_1
    move-object v3, p2

    goto :goto_0

    .line 253
    :cond_4
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x2

    return v0
.end method
