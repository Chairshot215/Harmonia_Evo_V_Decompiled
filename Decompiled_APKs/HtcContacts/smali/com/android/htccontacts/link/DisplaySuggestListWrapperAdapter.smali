.class public Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplaySuggestListWrapperAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplaySuggestionListWrapperAdapter"

.field public static final TYPE_CHILD:I = 0x1

.field private static final TYPE_LAST:I = 0x2

.field public static final TYPE_PARENT:I


# instance fields
.field private final mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

.field private mAlphabet:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

.field private mParentCursor:Landroid/database/Cursor;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/link/DisplaySuggestListAdapter;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "Adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/htccontacts/link/DisplaySuggestListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, SuggestId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    .line 66
    iput-object p3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mSuggestId:Ljava/util/ArrayList;

    .line 67
    const v0, 0x1040419

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private closeParentCursor()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method protected bindContactParentView(ILandroid/view/View;)V
    .locals 18
    .parameter "position"
    .parameter "view"

    .prologue
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 147
    .local v2, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 150
    .local v11, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    iget v15, v11, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mParentPosition:I

    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    const-string v16, "display_name"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, display_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    const-string v16, "photo_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 154
    .local v10, photo_id:I
    int-to-long v14, v10

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, bp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->defaultIcon:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    move-object v9, v4

    .line 163
    .local v9, markStr:Ljava/lang/CharSequence;
    sget-object v14, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    sget-object v15, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v16, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v16

    invoke-static {v4, v14, v15, v0}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 166
    if-nez v9, :cond_1

    .line 167
    move-object v9, v4

    .line 170
    :cond_1
    iget v14, v11, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    iput v14, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mPos:I

    .line 171
    const/4 v14, 0x0

    iput v14, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    const-string v16, "lookup"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    const-string v16, "data_set"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, dataSet:Ljava/lang/String;
    const/4 v7, 0x0

    .line 177
    .local v7, isLinked:Z
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    .line 179
    .local v12, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_3

    .line 180
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v6, 0x1

    if-lt v14, v12, :cond_2

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_5

    .line 181
    :cond_2
    const/4 v7, 0x1

    .line 185
    :cond_3
    if-eqz v7, :cond_6

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0023

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, type:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v14

    if-nez v9, :cond_4

    const-string v9, ""

    .end local v9           #markStr:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v14, v9}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 200
    check-cast p2, Lcom/htc/widget/HtcListItem;

    .end local p2
    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 205
    .end local v1           #bp:Landroid/graphics/Bitmap;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #display_name:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #isLinked:Z
    .end local v8           #lookupKey:Ljava/lang/String;
    .end local v10           #photo_id:I
    .end local v12           #size:I
    .end local v13           #type:Ljava/lang/String;
    :goto_2
    return-void

    .line 179
    .restart local v1       #bp:Landroid/graphics/Bitmap;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v4       #display_name:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v7       #isLinked:Z
    .restart local v8       #lookupKey:Ljava/lang/String;
    .restart local v9       #markStr:Ljava/lang/CharSequence;
    .restart local v10       #photo_id:I
    .restart local v12       #size:I
    .restart local p2
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 188
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const-string v17, "ext_account_Type"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .restart local v13       #type:Ljava/lang/String;
    goto :goto_1

    .line 202
    .end local v1           #bp:Landroid/graphics/Bitmap;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #display_name:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #isLinked:Z
    .end local v8           #lookupKey:Ljava/lang/String;
    .end local v9           #markStr:Ljava/lang/CharSequence;
    .end local v10           #photo_id:I
    .end local v12           #size:I
    .end local v13           #type:Ljava/lang/String;
    .end local p2
    :catch_0
    move-exception v5

    .line 203
    .local v5, e:Ljava/lang/Exception;
    const-string v14, "DisplaySuggestionListWrapperAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "can\'t move to position "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public calculateContactHeader()Z
    .locals 22

    .prologue
    .line 286
    const-string v18, "DisplaySuggestionListWrapperAdapter"

    const-string v19, "---------calculateContactHeader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v17, 0x1

    .line 288
    .local v17, success:Z
    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->clearContactHeaderInfo()V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 294
    .local v4, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getSuggestIds()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mSuggestId:Ljava/util/ArrayList;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_6

    .line 297
    const/4 v14, 0x0

    .line 298
    .local v14, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    const/4 v11, 0x0

    .line 299
    .local v11, parent_count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 303
    .local v12, parent_id:J
    new-instance v14, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .end local v14           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v11, v1, v11}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;-><init>(IIII)V

    .line 304
    .restart local v14       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    invoke-virtual {v14, v12, v13}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->setContactInfo(J)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v11, v11, 0x1

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mSuggestId:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 310
    .local v10, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-wide v0, v10, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v12

    if-nez v18, :cond_1

    .line 311
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 313
    :cond_2
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 314
    .local v8, id:J
    iget-object v0, v10, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 315
    .local v15, sid:J
    cmp-long v18, v8, v15

    if-nez v18, :cond_3

    .line 316
    new-instance v14, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .end local v14           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    const/16 v18, 0x1

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;-><init>(IIII)V

    .line 317
    .restart local v14       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v15           #sid:J
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_2

    goto :goto_0

    .line 326
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #id:J
    .end local v10           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-nez v18, :cond_0

    .line 334
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #parent_count:I
    .end local v12           #parent_id:J
    .end local v14           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 336
    return v17

    .line 329
    :catch_0
    move-exception v5

    .line 330
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "DisplaySuggestionListWrapperAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail to calculate suggetsion: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->clearContactHeaderInfo()V

    .line 332
    const/16 v17, 0x0

    goto :goto_1

    .line 334
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method public clearContactHeaderInfo()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_0
    return-void
.end method

.method protected getContactParentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->bindContactParentView(ILandroid/view/View;)V

    .line 230
    return-object v1

    .line 215
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 219
    .end local v1           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 221
    .local v0, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    iget v2, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 225
    .end local v1           #view:Landroid/view/View;
    :cond_2
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 3
    .parameter "listPos"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 399
    .local v0, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    iget p1, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    .line 403
    .end local v0           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    .end local p1
    :cond_0
    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 80
    .local v0, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 86
    .end local v0           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 83
    .restart local v0       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget v2, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 86
    .end local v0           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemContactId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 92
    .local v2, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v3, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    .line 93
    #getter for: Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->access$000(Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;)J

    move-result-wide v0

    .line 103
    .end local v2           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :goto_0
    return-wide v0

    .line 95
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_0
    const-wide/16 v0, -0x1

    .line 97
    .local v0, lReturn:J
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget v4, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 103
    .end local v0           #lReturn:J
    .end local v2           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 98
    .restart local v0       #lReturn:J
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 109
    .local v2, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v3, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    .line 110
    int-to-long v0, p1

    .line 120
    .end local v2           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :goto_0
    return-wide v0

    .line 112
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_0
    const-wide/16 v0, -0x1

    .line 114
    .local v0, lReturn:J
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget v4, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 120
    .end local v0           #lReturn:J
    .end local v2           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 115
    .restart local v0       #lReturn:J
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 132
    .local v0, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    .line 134
    .end local v0           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 7
    .parameter "section"

    .prologue
    .line 421
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    if-nez v5, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    .line 423
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    :cond_0
    const/4 v5, 0x0

    .line 439
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v5

    .line 427
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v5, "display_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 428
    .local v3, mIdxDisplayName:I
    new-instance v5, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v5, v0, v3, v6}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    .line 431
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #mIdxDisplayName:I
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v4, mParentPosition:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 433
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 434
    .local v2, info:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v5, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_3

    .line 435
    iget v5, v2, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mListPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    invoke-virtual {v5, p1, v4}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->getPositionForSection(ILjava/util/ArrayList;)I

    move-result v5

    goto :goto_0
.end method

.method public getRowInfoArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 234
    const-string v5, "DisplaySuggestionListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------getView:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 238
    :cond_0
    const-string v5, "DisplaySuggestionListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRowInfo is not initiate, or position error.> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 269
    .local v2, returnView:Landroid/view/View;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 270
    return-object v2

    .line 242
    .end local v2           #returnView:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 243
    .local v3, row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v5, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_3

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getContactParentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2       #returnView:Landroid/view/View;
    goto :goto_0

    .line 245
    .end local v2           #returnView:Landroid/view/View;
    :cond_3
    iget v5, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 246
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget v6, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 248
    .restart local v2       #returnView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 249
    .local v1, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    if-eqz v1, :cond_1

    .line 251
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 252
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;

    .line 253
    .local v4, row_next:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    iget v5, v4, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_4

    .line 255
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 269
    .end local v1           #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .end local v2           #returnView:Landroid/view/View;
    .end local v3           #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    .end local v4           #row_next:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 257
    .restart local v1       #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .restart local v2       #returnView:Landroid/view/View;
    .restart local v3       #row:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    .restart local v4       #row_next:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_4
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 259
    .end local v4           #row_next:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
    :cond_5
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 260
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 264
    .end local v1           #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .end local v2           #returnView:Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget v6, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 265
    .restart local v2       #returnView:Landroid/view/View;
    const-string v5, "DisplaySuggestionListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView> Unknown view type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v5, "DisplaySuggestionListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView> Unknown view data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public isParentLoadComplete()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newContactParentView()Landroid/view/View;
    .locals 4

    .prologue
    .line 138
    new-instance v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;-><init>()V

    .line 139
    .local v1, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 140
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 142
    return-object v0
.end method

.method public setParentCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->closeParentCursor()V

    .line 371
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    .line 372
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, mIdxDisplayName:I
    new-instance v1, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    .line 375
    const-string v1, "DisplaySuggestionListWrapperAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------mParentCursor count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0           #mIdxDisplayName:I
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v1, "DisplaySuggestionListWrapperAdapter"

    const-string v2, "--------mParentCursor IS NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
