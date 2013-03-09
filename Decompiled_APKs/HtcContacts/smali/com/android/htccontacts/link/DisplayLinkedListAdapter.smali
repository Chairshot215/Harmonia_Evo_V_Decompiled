.class public Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "DisplayLinkedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkSuggestListAdapter"


# instance fields
.field private mChildIdNeedSplit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;


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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, childIdNeedSplit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 60
    iput-object p3, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mChildIdNeedSplit:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 66
    move-object/from16 v10, p1

    check-cast v10, Lcom/htc/widget/HtcListItem;

    .line 67
    .local v10, newView:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v10}, Lcom/htc/widget/HtcListItem;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 69
    .local v6, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    const-string v12, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, name:Ljava/lang/String;
    move-object v8, v9

    .line 71
    .local v8, markStr:Ljava/lang/CharSequence;
    sget-object v12, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    sget-object v13, Lcom/android/htccontacts/link/DisplayLinkedActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v14, Lcom/android/htccontacts/link/DisplayLinkedActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v9, v12, v13, v14}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 74
    if-nez v8, :cond_0

    .line 75
    move-object v8, v9

    .line 77
    :cond_0
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v12, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v12, "account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, accountType:Ljava/lang/String;
    const-string v12, "data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, dataSet:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v4, v7}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, type:Ljava/lang/String;
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v12, v11}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 87
    const-string v12, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 88
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    iput v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mPos:I

    .line 90
    iget-object v12, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mChildIdNeedSplit:Ljava/util/ArrayList;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mChildIdNeedSplit:Ljava/util/ArrayList;

    const-string v13, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 91
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactUnlinkedButtonResourceId(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 96
    :goto_0
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v12, :cond_1

    .line 97
    const-string v12, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 98
    .local v2, Id:J
    new-instance v5, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;

    invoke-direct {v5}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;-><init>()V

    .line 99
    .local v5, c:Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;
    iput-wide v2, v5, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->Id:J

    .line 100
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    iput v12, v5, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->curPos:I

    .line 101
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v12, v5}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v2           #Id:J
    .end local v5           #c:Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;
    :cond_1
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v12

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-super {p0, v0, v1, v12, v11}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 105
    return-void

    .line 93
    :cond_2
    iget-object v12, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactLinkedButtonResourceId(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 119
    new-instance v1, Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    .local v1, newView:Lcom/htc/widget/HtcListItem;
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    invoke-direct {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;-><init>()V

    .line 122
    .local v0, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    new-instance v3, Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 123
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, quickContactLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    .line 125
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 127
    new-instance v3, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 128
    new-instance v3, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 129
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$1;-><init>(Lcom/android/htccontacts/link/DisplayLinkedListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 139
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 140
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 141
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 143
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "LinkSuggestListAdapter"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
