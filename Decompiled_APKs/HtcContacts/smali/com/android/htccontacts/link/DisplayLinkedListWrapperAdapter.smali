.class public Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLinkedListWrapperAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayLinkedListWrapperAdapter"

.field public static final TYPE_CHILD:I = 0x1

.field private static final TYPE_LAST:I = 0x2

.field public static final TYPE_PARENT:I


# instance fields
.field private final mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

.field private mAlphabet:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

.field private mParentCursor:Landroid/database/Cursor;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/link/DisplayLinkedListAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "Adapter"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    .line 62
    const v0, 0x1040419

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;)Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    return-object v0
.end method

.method private closeParentCursor()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 312
    :cond_0
    return-void
.end method

.method private queryParentCursor()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;-><init>(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 341
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected bindContactParentView(ILandroid/view/View;)V
    .locals 8
    .parameter "position"
    .parameter "view"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 125
    .local v1, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 126
    .local v3, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPhotoId:I
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->access$000(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->defaultIcon:Landroid/graphics/Bitmap;

    :cond_0
    move-object v4, p2

    .line 132
    check-cast v4, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->access$100(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, markStr:Ljava/lang/CharSequence;
    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->access$100(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    sget-object v6, Lcom/android/htccontacts/link/DisplayLinkedActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v7, Lcom/android/htccontacts/link/DisplayLinkedActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v4, v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 138
    if-nez v2, :cond_1

    .line 139
    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->access$100(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v4, p2

    .line 142
    check-cast v4, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v2, ""

    .end local v2           #markStr:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v4, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    move-object v4, p2

    .line 143
    check-cast v4, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 145
    iget v4, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    iput v4, v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mPos:I

    .line 147
    check-cast p2, Lcom/htc/widget/HtcListItem;

    .end local p2
    const/16 v4, 0xa

    invoke-virtual {p2, v4}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 148
    return-void
.end method

.method public calculateContactHeader()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 229
    const-string v8, "DisplayLinkedListWrapperAdapter"

    const-string v9, "---------calculateContactHeader"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->clearContactHeaderInfo()V

    .line 233
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 235
    .local v3, cursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 236
    .local v1, cur_id:J
    const-wide/16 v6, 0x0

    .line 237
    .local v6, pre_id:J
    const/4 v5, 0x0

    .line 238
    .local v5, parent_count:I
    const/4 v0, 0x0

    .line 239
    .local v0, child_count:I
    if-eqz v3, :cond_3

    .line 240
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 241
    const-string v8, "contact_id"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 242
    cmp-long v8, v1, v6

    if-eqz v8, :cond_1

    .line 244
    if-ne v0, v12, :cond_0

    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_0

    .line 245
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    add-int/lit8 v5, v5, -0x1

    .line 250
    :cond_0
    new-instance v4, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v4, v8, v5, v9, v5}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;-><init>(IIII)V

    .line 251
    .local v4, info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    const-string v8, "contact_display_name"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "contact_photo_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v8, v9, v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->setContactInfo(Ljava/lang/String;IJ)V

    .line 254
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v5, v5, 0x1

    .line 256
    const/4 v0, 0x0

    .line 260
    .end local v4           #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_1
    new-instance v4, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    const/4 v8, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    iget-object v10, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v11, v5, -0x1

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;-><init>(IIII)V

    .line 261
    .restart local v4       #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 263
    move-wide v6, v1

    .line 264
    goto :goto_0

    .line 266
    .end local v4           #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_2
    if-ne v0, v12, :cond_3

    .line 267
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    add-int/lit8 v5, v5, -0x1

    .line 273
    :cond_3
    const-string v8, "DisplayLinkedListWrapperAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---------mRowInfo size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->queryParentCursor()V

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    .end local v0           #child_count:I
    .end local v1           #cur_id:J
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #parent_count:I
    .end local v6           #pre_id:J
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public clearContactHeaderInfo()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->closeParentCursor()V

    .line 226
    return-void
.end method

.method protected getContactParentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->bindContactParentView(ILandroid/view/View;)V

    .line 173
    return-object v1

    .line 158
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 162
    .end local v1           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 164
    .local v0, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    iget v2, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->newContactParentView()Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 168
    .end local v1           #view:Landroid/view/View;
    :cond_2
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 3
    .parameter "listPos"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 353
    .local v0, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 354
    iget p1, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    .line 357
    .end local v0           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    .end local p1
    :cond_0
    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 75
    .local v0, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 81
    .end local v0           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 78
    .restart local v0       #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget v2, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 81
    .end local v0           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 87
    .local v2, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v3, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    .line 88
    int-to-long v0, p1

    .line 98
    .end local v2           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :goto_0
    return-wide v0

    .line 90
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_0
    const-wide/16 v0, -0x1

    .line 92
    .local v0, lReturn:J
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget v4, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 98
    .end local v0           #lReturn:J
    .end local v2           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 93
    .restart local v0       #lReturn:J
    .restart local v2       #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 110
    .local v0, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    .line 112
    .end local v0           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentPosByCursor(I)I
    .locals 4
    .parameter "curPos"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 363
    .local v1, info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v2, v1, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    if-ne v2, p1, :cond_0

    .line 364
    iget p1, v1, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 368
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    .end local p1
    :cond_1
    return p1
.end method

.method public getPositionForSection(I)I
    .locals 7
    .parameter "section"

    .prologue
    .line 392
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    if-nez v5, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;

    .line 394
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    :cond_0
    const/4 v5, 0x0

    .line 410
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v5

    .line 398
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v5, "display_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, mIdxDisplayName:I
    new-instance v5, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v5, v0, v3, v6}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    .line 402
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #mIdxDisplayName:I
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v4, mParentPosition:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 404
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 405
    .local v2, info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v5, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_3

    .line 406
    iget v5, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mListPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 410
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

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
            "Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 428
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
    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 181
    :cond_0
    const-string v5, "DisplayLinkedListWrapperAdapter"

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

    .line 183
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    .local v2, returnView:Landroid/view/View;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 213
    return-object v2

    .line 185
    .end local v2           #returnView:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 186
    .local v3, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v5, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_3

    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getContactParentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2       #returnView:Landroid/view/View;
    goto :goto_0

    .line 188
    .end local v2           #returnView:Landroid/view/View;
    :cond_3
    iget v5, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 189
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget v6, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 191
    .restart local v2       #returnView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 192
    .local v1, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    if-eqz v1, :cond_1

    .line 194
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 195
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 196
    .local v4, row_next:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v5, v4, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v5, :cond_4

    .line 198
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 212
    .end local v1           #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .end local v2           #returnView:Landroid/view/View;
    .end local v3           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    .end local v4           #row_next:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 200
    .restart local v1       #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .restart local v2       #returnView:Landroid/view/View;
    .restart local v3       #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    .restart local v4       #row_next:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_4
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 202
    .end local v4           #row_next:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_5
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 203
    move-object v0, v2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 207
    .end local v1           #cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    .end local v2           #returnView:Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget v6, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 208
    .restart local v2       #returnView:Landroid/view/View;
    const-string v5, "DisplayLinkedListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView> Unknown view type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v5, "DisplayLinkedListWrapperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView> Unknown view data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

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
    .line 103
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 381
    .local v0, row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v1, v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 385
    .end local v0           #row:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected newContactParentView()Landroid/view/View;
    .locals 4

    .prologue
    .line 116
    new-instance v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;-><init>()V

    .line 117
    .local v1, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 120
    return-object v0
.end method
