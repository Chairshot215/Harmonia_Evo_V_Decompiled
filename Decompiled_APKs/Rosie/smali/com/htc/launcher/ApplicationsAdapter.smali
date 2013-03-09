.class public Lcom/htc/launcher/ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationsAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/ApplicationsAdapter$1;,
        Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final FILTER_ALLAPPS:I = 0x0

.field public static final FILTER_DOWNLOADED:I = 0x1

.field public static final FILTER_FREQUENT:I = 0x2

.field public static final FILTER_OPERATOR_TAB:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ApplicationsAdapter"

.field public static final localLOGV:Z


# instance fields
.field ITEMS_PER_PAGE:I

.field ITEMS_PER_ROW:I

.field ROWS_PER_PAGE:I

.field private mAlphaMap:Landroid/util/SparseIntArray;

.field private mAlphabet:[Ljava/lang/String;

.field private mCollator:Ljava/text/Collator;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;)V
    .locals 2
    .parameter "context"
    .parameter "apps"

    .prologue
    const/4 v0, 0x4

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    .line 55
    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    .line 56
    iget v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    iget v1, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    .line 74
    iput-object p1, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    iput-object p2, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    .line 77
    invoke-direct {p0}, Lcom/htc/launcher/ApplicationsAdapter;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v0, 0x4

    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    .line 55
    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    .line 56
    iget v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    iget v1, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    .line 81
    iput-object p1, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-direct {v0, p2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    .line 85
    invoke-direct {p0}, Lcom/htc/launcher/ApplicationsAdapter;->init()V

    .line 86
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 90
    iget-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v4, 0x1040419

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, alphabetString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    .line 92
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v3, Landroid/util/SparseIntArray;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 97
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mCollator:Ljava/text/Collator;

    .line 98
    iget-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mCollator:Ljava/text/Collator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 100
    iget-object v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    .line 102
    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    .line 103
    iget v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    iget v4, p0, Lcom/htc/launcher/ApplicationsAdapter;->ROWS_PER_PAGE:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    .line 104
    return-void
.end method

.method private newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "parent"

    .prologue
    const v5, 0x7f070009

    const v3, 0x7f030007

    const/4 v4, 0x0

    .line 114
    new-instance v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;-><init>(Lcom/htc/launcher/ApplicationsAdapter$1;)V

    .line 117
    .local v0, holder:Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;
    instance-of v2, p2, Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/htc/launcher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090073

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, view:Landroid/view/View;
    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 120
    const v2, 0x202001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 121
    iget-object v2, v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    return-object v1

    .line 124
    .end local v1           #view:Landroid/view/View;
    :cond_0
    instance-of v2, p2, Lcom/htc/launcher/AllAppsGridView;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/htc/launcher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    goto :goto_0

    .line 129
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 130
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 7
    .parameter "convertView"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 216
    iget-object v4, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 217
    .local v1, currLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, lang:Ljava/lang/String;
    const-string v0, "zh,ko,ja"

    .line 219
    .local v0, UNSUPPORT_LANG:Ljava/lang/String;
    const-string v4, "zh,ko,ja"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 220
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 221
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 239
    :goto_0
    return-void

    .line 225
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 226
    .local v3, title:Ljava/lang/String;
    iget-object v4, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 227
    iget-object v3, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .end local v3           #title:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 232
    .restart local v3       #title:Ljava/lang/String;
    :goto_1
    const-string v4, ".*\\W.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 233
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 234
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 229
    .restart local p1
    :cond_1
    iget-object v4, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 236
    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 237
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/launcher/ApplicationInfo;
    .locals 4
    .parameter "position"

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->get(I)Lcom/htc/launcher/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ApplicationsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationsAdapter.getItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/launcher/ApplicationsAdapter;->getItem(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 16
    .parameter "arg0"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    if-nez v13, :cond_1

    .line 270
    const/4 v9, 0x0

    .line 370
    :cond_0
    :goto_0
    return v9

    .line 274
    :cond_1
    if-gtz p1, :cond_2

    .line 275
    const/4 v9, 0x0

    goto :goto_0

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    array-length v13, v13

    move/from16 v0, p1

    if-lt v0, v13, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    array-length v13, v13

    add-int/lit8 p1, v13, -0x1

    .line 281
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 282
    .local v2, count:I
    const/4 v12, 0x0

    .line 283
    .local v12, start:I
    move v6, v2

    .line 286
    .local v6, end:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    aget-object v8, v13, p1

    .line 287
    .local v8, letter:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 288
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 290
    .local v7, key:I
    const/high16 v13, -0x8000

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    const/high16 v15, -0x8000

    invoke-virtual {v14, v7, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .local v9, pos:I
    if-eq v13, v9, :cond_4

    .line 294
    if-gez v9, :cond_0

    .line 295
    neg-int v9, v9

    .line 296
    move v6, v9

    .line 304
    :cond_4
    if-lez p1, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    add-int/lit8 v14, p1, -0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 307
    .local v10, prevLetter:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    const/high16 v14, -0x8000

    invoke-virtual {v13, v10, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 308
    .local v11, prevLetterPos:I
    const/high16 v13, -0x8000

    if-eq v11, v13, :cond_5

    .line 309
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 315
    .end local v10           #prevLetter:I
    .end local v11           #prevLetterPos:I
    :cond_5
    add-int v13, v6, v12

    div-int/lit8 v9, v13, 0x2

    .line 317
    :goto_1
    if-ge v9, v6, :cond_7

    .line 320
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/launcher/ApplicationsAdapter;->getItem(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, curName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/launcher/ApplicationsAdapter;->getItem(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v1

    .line 322
    .local v1, appInfo:Lcom/htc/launcher/ApplicationInfo;
    iget v13, v1, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    const/16 v14, 0xc8

    if-ge v13, v14, :cond_8

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v4, v13, v14

    .line 328
    :cond_6
    :goto_2
    if-nez v4, :cond_a

    .line 329
    if-nez v9, :cond_9

    .line 369
    .end local v1           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v4           #curName:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 324
    .restart local v1       #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .restart local v4       #curName:Ljava/lang/String;
    :cond_8
    iget v13, v1, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    const/16 v14, 0xc8

    if-le v13, v14, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    aget-object v4, v13, v14

    goto :goto_2

    .line 332
    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 333
    goto :goto_1

    .line 336
    :cond_a
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 338
    .local v3, curLetter:I
    if-eq v3, v7, :cond_f

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    const/high16 v14, -0x8000

    invoke-virtual {v13, v3, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 341
    .local v5, curPos:I
    const/high16 v13, -0x8000

    if-eq v5, v13, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v9, :cond_c

    .line 343
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphaMap:Landroid/util/SparseIntArray;

    neg-int v14, v9

    invoke-virtual {v13, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/ApplicationsAdapter;->mCollator:Ljava/text/Collator;

    invoke-virtual {v13, v4, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_d

    .line 346
    add-int/lit8 v12, v9, 0x1

    .line 347
    if-lt v12, v2, :cond_e

    .line 348
    move v9, v2

    .line 349
    goto :goto_3

    .line 352
    :cond_d
    move v6, v9

    .line 364
    .end local v5           #curPos:I
    :cond_e
    :goto_4
    add-int v13, v12, v6

    div-int/lit8 v9, v13, 0x2

    .line 365
    goto :goto_1

    .line 356
    :cond_f
    if-eq v12, v9, :cond_7

    .line 361
    move v6, v9

    goto :goto_4
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/launcher/ApplicationsAdapter;->mAlphabet:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/launcher/ApplicationsAdapter;->getItem(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v4

    .line 142
    .local v4, info:Lcom/htc/launcher/ApplicationInfo;
    if-nez p2, :cond_0

    .line 143
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, p3}, Lcom/htc/launcher/ApplicationsAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 144
    :cond_0
    if-nez v4, :cond_1

    .line 210
    :goto_0
    return-object p2

    .line 148
    :cond_1
    iget-boolean v7, v4, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    if-nez v7, :cond_2

    .line 149
    iget-object v7, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 150
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 153
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;

    .line 155
    .local v3, holder:Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;
    instance-of v7, p3, Lcom/htc/widget/HtcListView;

    if-eqz v7, :cond_3

    .line 156
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 159
    :cond_3
    instance-of v7, p3, Lcom/htc/launcher/AllAppsGridView;

    if-eqz v7, :cond_8

    .line 160
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11, v8, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0, p2, v4}, Lcom/htc/launcher/ApplicationsAdapter;->refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, PADDING_LEFT:I
    const/4 v1, 0x0

    .line 173
    .local v1, PADDING_RIGHT:I
    iget v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    rem-int v7, p1, v7

    iget v8, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    iget v9, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_6

    .line 175
    iget v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    div-int v2, p1, v7

    .line 176
    .local v2, currentPage:I
    invoke-virtual {p0}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    div-int v6, v7, v8

    .line 177
    .local v6, totalPage:I
    add-int/lit8 v7, v6, -0x1

    if-eq v2, v7, :cond_5

    .line 179
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v7

    if-nez v7, :cond_4

    .line 180
    const v7, 0x7f020002

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p2, v10, v7, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p2, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 189
    .end local v2           #currentPage:I
    .end local v6           #totalPage:I
    :cond_6
    iget v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_PAGE:I

    rem-int v7, p1, v7

    iget v8, p0, Lcom/htc/launcher/ApplicationsAdapter;->ITEMS_PER_ROW:I

    if-ge v7, v8, :cond_7

    .line 191
    invoke-virtual {p2, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p2, v10, v7, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 194
    :cond_7
    invoke-virtual {p2, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p2, v10, v7, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 199
    .end local v0           #PADDING_LEFT:I
    .end local v1           #PADDING_RIGHT:I
    :cond_8
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11, v8, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v7, v3, Lcom/htc/launcher/ApplicationsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-direct {p0, p2, v4}, Lcom/htc/launcher/ApplicationsAdapter;->refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 205
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v7, p0, Lcom/htc/launcher/ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p2, v10, v7, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method
