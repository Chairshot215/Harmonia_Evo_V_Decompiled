.class public Lcom/htc/store/module/adapter/MyActivityAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "MyActivityAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/adapter/MyActivityAdapter$1;,
        Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;,
        Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;,
        Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

.field private mFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

.field private mImageCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyword:Ljava/lang/CharSequence;

.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field private mSearchKeywordBackgroundColor:I

.field private mSearchKeywordForegroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 56
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 57
    new-instance v1, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v1, p1}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 58
    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v1, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mKeyword:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mSearchKeywordForegroundColor:I

    .line 63
    const-string v1, "input_text_selection_highlight"

    const v2, 0x20a0063

    invoke-static {p1, v1, v2}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mSearchKeywordBackgroundColor:I

    .line 65
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;

    .line 72
    .local v12, item:Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;
    const/16 v19, 0x1

    .line 73
    .local v19, useDefaultIcon:Z
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, iconURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 76
    .local v14, mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v14, :cond_0

    .line 77
    invoke-virtual {v14}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v20

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 78
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    .line 79
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_icon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/store/module/view/TileImageView;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const/16 v19, 0x0

    .line 84
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    if-eqz v19, :cond_1

    .line 85
    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 86
    .local v6, data:[B
    if-eqz v6, :cond_1

    array-length v0, v6

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 87
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 88
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 89
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_icon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/store/module/view/TileImageView;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    const/16 v19, 0x0

    .line 94
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #data:[B
    :cond_1
    if-eqz v19, :cond_2

    .line 95
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_icon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000e

    invoke-virtual/range {v20 .. v21}, Lcom/htc/store/module/view/TileImageView;->setTileImageResource(I)V

    .line 99
    :cond_2
    const/16 v20, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 100
    .local v17, title:Ljava/lang/String;
    const/16 v20, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, itemType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mKeyword:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mKeyword:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mSearchKeywordForegroundColor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mSearchKeywordBackgroundColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getDisplayedStringMatchAll(Ljava/lang/String;Ljava/lang/CharSequence;II)Landroid/text/SpannableString;

    move-result-object v15

    .line 105
    .local v15, spanString:Landroid/text/SpannableString;
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v15           #spanString:Landroid/text/SpannableString;
    :goto_0
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 110
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_type:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_3
    const/16 v20, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 115
    .local v16, status:I
    const/16 v20, 0xa

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 116
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000c

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    const/16 v20, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 118
    .local v8, dateInMillisSecs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9}, Lcom/htc/store/util/DateTimeUtils;->getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, date:Ljava/lang/String;
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v7           #date:Ljava/lang/String;
    .end local v8           #dateInMillisSecs:J
    :cond_4
    :goto_1
    return-void

    .line 107
    .end local v16           #status:I
    :cond_5
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    .restart local v16       #status:I
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 121
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0068

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 123
    :cond_7
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 124
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0020

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 126
    :cond_8
    const/16 v20, 0x4

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 127
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0021

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 129
    :cond_9
    const/16 v20, 0xb

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 130
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0015

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 132
    :cond_a
    const/16 v20, 0xc

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 133
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000d

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0056

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 135
    :cond_b
    const/16 v20, 0x6

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 136
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0068

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 138
    :cond_c
    const/16 v20, 0x7

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 139
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0020

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 141
    :cond_d
    const/16 v20, 0x5

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 142
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, v12, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0055

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 241
    iget-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    if-eqz v1, :cond_1

    .line 242
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 243
    .local v0, isEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    invoke-interface {v1, v0}, Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;->onCursorChanged(Z)V

    .line 245
    .end local v0           #isEmpty:Z
    :cond_1
    return-void

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayedStringMatchAll(Ljava/lang/String;Ljava/lang/CharSequence;II)Landroid/text/SpannableString;
    .locals 8
    .parameter "target"
    .parameter "keyword"
    .parameter "foregroundColor"
    .parameter "backgroundColor"

    .prologue
    const/16 v7, 0x21

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, targetLowerCase:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, keywordLowerCase:Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 227
    .local v3, length:I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v0, displayedString:Landroid/text/SpannableString;
    const/4 v1, -0x1

    .line 229
    .local v1, index:I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    .line 230
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    invoke-virtual {v0, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 232
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v5, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    invoke-virtual {v0, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 235
    :cond_0
    return-object v0
.end method

.method public isImageCacheMappingNull()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mImageCacheMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;-><init>(Lcom/htc/store/module/adapter/MyActivityAdapter;Lcom/htc/store/module/adapter/MyActivityAdapter$1;)V

    .line 153
    .local v0, holder:Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;
    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/view/TileImageView;

    iput-object v2, v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_icon:Lcom/htc/store/module/view/TileImageView;

    .line 154
    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_name:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->content_type:Landroid/widget/TextView;

    .line 156
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_icon:Landroid/widget/ImageView;

    .line 157
    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->status_text:Landroid/widget/TextView;

    .line 159
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget-object v4, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->isFirstLaunch()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    :try_start_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 252
    iget-object v4, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    move v1, v2

    .line 254
    .local v1, isEmpty:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    invoke-interface {v4, v1}, Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;->onContentChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1           #isEmpty:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 253
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/module/adapter/MyActivityAdapter;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 184
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, productId:Ljava/lang/String;
    const/4 v9, 0x5

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, packageName:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, appType:Ljava/lang/String;
    const/16 v9, 0xb

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 188
    .local v8, status:I
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 192
    .local v3, index:J
    iget-object v9, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v10, 0x4

    invoke-virtual {v9, v7, v10}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;I)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v5

    .line 193
    .local v5, item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v5, :cond_0

    .line 194
    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getId()J

    move-result-wide v9

    cmp-long v9, v3, v9

    if-eqz v9, :cond_0

    .line 195
    sget-object v9, Lcom/htc/store/module/adapter/MyActivityAdapter;->TAG:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "call delete marked item : id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", product id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.htc.store.delete.marked.item"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, i:Landroid/content/Intent;
    const-string v9, "delete_marked_item_marked_id"

    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v9, "delete_marked_item_index"

    invoke-virtual {v2, v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    iget-object v9, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 204
    iget-object v9, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v7, v10}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByOnlineIdAndType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 207
    iget-object v9, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/htc/store/util/ActivityUtils;->viewAppDetail(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mKeyword:Ljava/lang/CharSequence;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    invoke-interface {v1, p1}, Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;->filter(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0
.end method

.method public setDataChangedListener(Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    .line 179
    return-void
.end method

.method public setImageCacheMapping(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/store/module/vo/ImageCacheMappingItem;>;"
    iput-object p1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mImageCacheMapping:Ljava/util/HashMap;

    .line 268
    return-void
.end method

.method public setMyActivitysFilter(Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter;->mFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    .line 175
    return-void
.end method
