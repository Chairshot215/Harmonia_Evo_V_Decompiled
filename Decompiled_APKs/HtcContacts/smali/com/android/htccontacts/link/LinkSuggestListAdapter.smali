.class public Lcom/android/htccontacts/link/LinkSuggestListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "LinkSuggestListAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkSuggestListAdapter"


# instance fields
.field private mAddIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p3, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mAddIds:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/LinkSuggestListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x2e

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 104
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const-string v8, "lookup"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, lookupKey:Ljava/lang/String;
    const-string v8, "data_set"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, dataSet:Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, isLinked:Z
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 109
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v3, 0x1

    if-lt v8, v6, :cond_0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_2

    .line 111
    :cond_0
    const/4 v4, 0x1

    .line 115
    :cond_1
    if-eqz v4, :cond_3

    .line 116
    iget-object v8, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, type:Ljava/lang/String;
    :goto_1
    const-string v8, "display_name"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    const/4 v8, 0x1

    iput v8, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 127
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    iput v8, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    .line 128
    iget-object v8, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mAddIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mAddIds:Ljava/util/ArrayList;

    const-string v9, "_id"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 129
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v8

    invoke-static {p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactLinkedButtonResourceId(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 134
    :goto_2
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v8

    const-string v9, "_id"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 136
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 138
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v8

    invoke-super {p0, p2, p3, v8, v7}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 140
    return-void

    .line 109
    .end local v7           #type:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v8, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const-string v9, "ext_account_Type"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #type:Ljava/lang/String;
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v8

    invoke-static {p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactUnlinkedButtonResourceId(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/htccontacts/app/BaseActivity;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/htccontacts/app/BaseActivity;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    .line 78
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    .line 79
    if-eqz p1, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 82
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mRowIDColumn:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mDataValid:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 87
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mRowIDColumn:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mDataValid:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    if-nez p1, :cond_0

    .line 200
    new-instance p1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p1
    iget-object v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x2bd

    invoke-direct {p1, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 201
    .restart local p1
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .end local v0           #cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    const-string v1, "suggest"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v0       #cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 203
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    :cond_0
    move-object v1, p1

    .line 205
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const v2, 0x7f0a0280

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    move-object v1, p1

    .line 206
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 208
    return-object p1
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 145
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v2, "suggest"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v2, 0xc9

    invoke-direct {v0, p1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 147
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/link/LinkSuggestListAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/link/LinkSuggestListAdapter$1;-><init>(Lcom/android/htccontacts/link/LinkSuggestListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 157
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 225
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "LinkSuggestListAdapter"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
