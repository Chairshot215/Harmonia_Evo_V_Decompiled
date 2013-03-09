.class public Lcom/android/htccontacts/link/DisplaySuggestListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "DisplaySuggestListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplaySuggestListAdapter"


# instance fields
.field protected mChildIdNeedAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, childIdNeedAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 57
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p3, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mChildIdNeedAdd:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 62
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 67
    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 68
    .local v12, newView:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    .line 70
    .local v3, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    const-string v15, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, name:Ljava/lang/String;
    move-object v10, v11

    .line 72
    .local v10, markStr:Ljava/lang/CharSequence;
    sget-object v15, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    sget-object v16, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v17, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v15, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 75
    if-nez v10, :cond_0

    .line 76
    move-object v10, v11

    .line 78
    :cond_0
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v15, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v15, "lookup"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, lookupKey:Ljava/lang/String;
    const-string v15, "data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, dataSet:Ljava/lang/String;
    const/4 v8, 0x0

    .line 84
    .local v8, isLinked:Z
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    .line 86
    .local v13, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v13, :cond_2

    .line 87
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    add-int/lit8 v15, v7, 0x1

    if-lt v15, v13, :cond_1

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 88
    :cond_1
    const/4 v8, 0x1

    .line 92
    :cond_2
    if-eqz v8, :cond_5

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0023

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, type:Ljava/lang/String;
    :goto_1
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v15, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 105
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    iput v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mPos:I

    .line 106
    const-string v15, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mChildIdNeedAdd:Ljava/util/ArrayList;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mChildIdNeedAdd:Ljava/util/ArrayList;

    const-string v16, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 109
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactLinkedButtonResourceId(Landroid/content/Context;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 114
    :goto_2
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v15, :cond_3

    .line 115
    const-string v15, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 116
    .local v4, contactId:J
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 119
    .end local v4           #contactId:J
    :cond_3
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v15}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-super {v0, v1, v2, v15, v14}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 120
    return-void

    .line 86
    .end local v14           #type:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 95
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mContext:Landroid/content/Context;

    const-string v16, "ext_account_Type"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #type:Ljava/lang/String;
    goto/16 :goto_1

    .line 111
    :cond_6
    iget-object v15, v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/customize/CustomizeResource;->getContactUnlinkedButtonResourceId(Landroid/content/Context;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 125
    new-instance v1, Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    .local v1, newView:Lcom/htc/widget/HtcListItem;
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;

    invoke-direct {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;-><init>()V

    .line 129
    .local v0, cache:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    new-instance v3, Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 130
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 131
    .local v2, quickContactLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    .line 132
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    .line 133
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 135
    new-instance v3, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 136
    new-instance v3, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 137
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/android/htccontacts/link/DisplaySuggestListAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter$1;-><init>(Lcom/android/htccontacts/link/DisplaySuggestListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 147
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 148
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 149
    iget-object v3, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 151
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 157
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
    const-string v1, "DisplaySuggestListAdapter"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
