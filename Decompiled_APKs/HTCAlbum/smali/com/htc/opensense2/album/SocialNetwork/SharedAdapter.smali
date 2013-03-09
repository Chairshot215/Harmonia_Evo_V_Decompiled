.class public Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"

# interfaces
.implements Lcom/htc/opensense2/widget/IExpandableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$1;,
        Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;,
        Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "SharedAdapter.KEY_CLASS_NAME"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE"

.field public static final KEY_PACKAGE_NAME_FOR_OTHER:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

.field public static final KEY_SHARE_TO:Ljava/lang/String; = "SharedAdapter.KEY_SHARE_TO"

.field private static final LOG_TAG:Ljava/lang/String; = "SharedAdapter"

.field public static final SHARE_CONFLICT:I = 0x30000

.field public static final SHARE_IMAGE:I = 0x1

.field public static final SHARE_MULTIPLE:I = 0x20000

.field public static final SHARE_MULTIPLE_BOTH:I = 0x20003

.field public static final SHARE_MULTIPLE_IMAGES:I = 0x20001

.field public static final SHARE_MULTIPLE_ITEM_SET_AS:I = 0x440000

.field public static final SHARE_MULTIPLE_ITEM_SHARE:I = 0x220000

.field public static final SHARE_MULTIPLE_VIDEOS:I = 0x20002

.field public static final SHARE_PRINT:I = 0x550000

.field public static final SHARE_SINGLE:I = 0x10000

.field public static final SHARE_SINGLE_BOTH:I = 0x10003

.field public static final SHARE_SINGLE_IMAGE:I = 0x10001

.field public static final SHARE_SINGLE_ITEM_SET_AS:I = 0x330000

.field public static final SHARE_SINGLE_ITEM_SHARE:I = 0x110000

.field public static final SHARE_SINGLE_VIDEO:I = 0x10002

.field public static final SHARE_VIDEO:I = 0x2


# instance fields
.field private mCombinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnableDarkList:Z

.field private mExpandable:Z

.field private mExpanded:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "bShowIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, combinedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 73
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    .line 75
    iput-boolean p3, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    return-void
.end method


# virtual methods
.method public append(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 297
    return-void
.end method

.method public expandable()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 287
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 93
    const/4 v0, -0x1

    .line 94
    .local v0, nCount:I
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 96
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 97
    const/4 v0, 0x5

    .line 100
    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    if-eqz p2, :cond_1

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v13, v7, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;

    if-eqz v13, :cond_0

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;

    .line 140
    .end local v7           #tag:Ljava/lang/Object;
    .local v10, vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    if-nez v13, :cond_3

    .line 142
    const/4 v13, 0x6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-gt v13, v14, :cond_3

    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    .line 144
    const v13, 0x2090071

    iget v14, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    if-ne v13, v14, :cond_2

    .line 146
    move-object/from16 v11, p2

    .line 160
    .local v11, view:Landroid/view/View;
    :goto_1
    if-eqz v11, :cond_3

    .line 162
    iget-object v9, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 163
    .local v9, txtView:Landroid/widget/TextView;
    const v13, 0x1040371

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v3, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 165
    .local v3, imageView:Landroid/widget/ImageView;
    const v13, 0x2080345

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v12, v11

    .line 271
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v9           #txtView:Landroid/widget/TextView;
    .end local v11           #view:Landroid/view/View;
    .local v12, view:Landroid/view/View;
    :goto_2
    return-object v12

    .line 132
    .end local v10           #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    .end local v12           #view:Landroid/view/View;
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_0
    new-instance v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;-><init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$1;)V

    .restart local v10       #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    goto :goto_0

    .line 137
    .end local v7           #tag:Ljava/lang/Object;
    .end local v10           #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    :cond_1
    new-instance v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;-><init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$1;)V

    .restart local v10       #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    goto :goto_0

    .line 150
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 151
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v13, 0x2090071

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 153
    .restart local v11       #view:Landroid/view/View;
    const v13, 0x2090071

    iput v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    .line 154
    const v13, 0x2020010

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 155
    const v13, 0x202001a

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 171
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v13, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v13, :cond_6

    .line 175
    const v13, 0x7f030016

    iget v14, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    if-ne v13, v14, :cond_5

    .line 177
    move-object/from16 v11, p2

    .line 250
    .restart local v11       #view:Landroid/view/View;
    :goto_3
    iget-object v8, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 251
    .local v8, text:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v2, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 252
    .local v2, image:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 254
    .local v5, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v13, :cond_c

    .line 256
    if-eqz v2, :cond_4

    .line 258
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 259
    .local v1, iconDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 260
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    .end local v1           #iconDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 263
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :goto_4
    move-object v12, v11

    .line 271
    .end local v11           #view:Landroid/view/View;
    .restart local v12       #view:Landroid/view/View;
    goto/16 :goto_2

    .line 181
    .end local v2           #image:Lcom/htc/widget/HtcListItemImageButton;
    .end local v5           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v8           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v12           #view:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030016

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11       #view:Landroid/view/View;
    move-object v6, v11

    .line 182
    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 183
    .local v6, item:Lcom/htc/widget/HtcListItem;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const v13, 0x7f030016

    iput v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    .line 186
    const v13, 0x7f0a0027

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 187
    const v13, 0x7f0a0029

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 189
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 194
    .end local v6           #item:Lcom/htc/widget/HtcListItem;
    .end local v11           #view:Landroid/view/View;
    :cond_6
    const v13, 0x7f030014

    iget v14, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    if-ne v13, v14, :cond_7

    .line 196
    move-object/from16 v11, p2

    .restart local v11       #view:Landroid/view/View;
    goto :goto_3

    .line 200
    .end local v11           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030014

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 202
    .restart local v11       #view:Landroid/view/View;
    new-instance v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;

    .end local v10           #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;-><init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$1;)V

    .line 203
    .restart local v10       #vh:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
    const v13, 0x7f030014

    iput v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    .line 204
    const v13, 0x7f0a0027

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 205
    const v13, 0x7f0a0029

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 207
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 213
    .end local v11           #view:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v13, :cond_a

    .line 215
    const v13, 0x7f030013

    iget v14, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    if-ne v13, v14, :cond_9

    .line 217
    move-object/from16 v11, p2

    .restart local v11       #view:Landroid/view/View;
    goto/16 :goto_3

    .line 221
    .end local v11           #view:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030013

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11       #view:Landroid/view/View;
    move-object v6, v11

    .line 222
    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 223
    .restart local v6       #item:Lcom/htc/widget/HtcListItem;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    const v13, 0x7f030013

    iput v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    .line 226
    const v13, 0x7f0a0027

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 227
    const v13, 0x7f0a0029

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 229
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 234
    .end local v6           #item:Lcom/htc/widget/HtcListItem;
    .end local v11           #view:Landroid/view/View;
    :cond_a
    const v13, 0x7f030011

    iget v14, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    if-ne v13, v14, :cond_b

    .line 236
    move-object/from16 v11, p2

    .restart local v11       #view:Landroid/view/View;
    goto/16 :goto_3

    .line 240
    .end local v11           #view:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030011

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 242
    .restart local v11       #view:Landroid/view/View;
    const v13, 0x7f030011

    iput v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    .line 243
    const v13, 0x7f0a0027

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 244
    const v13, 0x7f0a0029

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v10, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->listItemImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 246
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 267
    .restart local v2       #image:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v5       #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .restart local v8       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_c
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 268
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto/16 :goto_4
.end method

.method public insert(ILcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "nIndex"
    .parameter "item"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 277
    .local v0, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 302
    return-void
.end method
