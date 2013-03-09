.class public Lcom/android/htccontacts/link/LinkContactListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "LinkContactListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkContactListAdapter"


# instance fields
.field private mDeleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 47
    .local p3, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 48
    iput-object p3, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDeleteIds:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/link/LinkContactListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/LinkContactListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .local v2, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    move-object v1, p1

    .line 90
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 93
    .local v1, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const-string v5, "account_type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, dataSet:Ljava/lang/String;
    invoke-static {p2, v0, v3}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, type:Ljava/lang/String;
    const-string v5, "display_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 101
    sget-object v5, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    const-string v5, "account_type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data_set"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    sget-object v6, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :goto_0
    const/4 v5, 0x2

    iput v5, v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 113
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    iput v5, v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    .line 114
    iget-object v5, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDeleteIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDeleteIds:Ljava/util/ArrayList;

    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    invoke-static {p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactUnlinkedButtonResourceId(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 120
    :goto_1
    iget v5, v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    .line 122
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 127
    :goto_2
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 128
    return-void

    .line 109
    :cond_0
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    invoke-super {p0, p2, p3, v5, v4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    invoke-static {p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactLinkedButtonResourceId(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1

    .line 124
    :cond_2
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/htccontacts/app/BaseActivity;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/htccontacts/app/BaseActivity;

    iget-object v1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    .line 69
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    .line 70
    if-eqz p1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mRowIDColumn:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDataValid:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mRowIDColumn:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/LinkContactListAdapter;->mDataValid:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 133
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v2, "link"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v2, 0xc9

    invoke-direct {v0, p1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 135
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/link/LinkContactListAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/link/LinkContactListAdapter$1;-><init>(Lcom/android/htccontacts/link/LinkContactListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 145
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "LinkContactListAdapter"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
