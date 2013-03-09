.class public Lcom/android/htccontacts/widget/IndexListGridAdapter;
.super Lcom/android/htccontacts/widget/IndexListAdapter;
.source "IndexListGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_ITEM_PER_ROW:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_ROW_COUNT:I = 0x0

.field private static final LOG_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "IndexListGridAdapter"

.field private static final TAG_D:Ljava/lang/String; = "DEBug-IndexListGridAdapter"


# instance fields
.field mCellCount:I

.field private mGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemPerRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 52
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x4

    sput v0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ITEM_PER_ROW:I

    .line 55
    sput v2, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    sput v3, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ITEM_PER_ROW:I

    .line 58
    sput v2, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    goto :goto_0

    .line 61
    :cond_1
    sput v2, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ITEM_PER_ROW:I

    .line 62
    sput v3, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "indexableAdapter"

    .prologue
    .line 72
    sget v0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ITEM_PER_ROW:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/IndexListGridAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;I)V
    .locals 2
    .parameter "context"
    .parameter "indexableAdapter"
    .parameter "itemPerRow"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mCellCount:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    iput p3, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    .line 81
    return-void
.end method

.method private prepareGrids([Landroid/view/View;Landroid/view/View;Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;)Landroid/view/View;
    .locals 7
    .parameter "viewList"
    .parameter "convertView"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 150
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object v4

    .line 153
    :cond_1
    iget v5, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    packed-switch v5, :pswitch_data_0

    .line 165
    :goto_1
    const/4 v1, 0x0

    .line 167
    .local v1, index:I
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    .line 168
    const v4, 0x7f0700cf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 169
    .local v2, lLayout:Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 170
    aget-object v4, p1, v1

    iget v5, p3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    invoke-direct {p0, v4, v5}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 174
    .end local v2           #lLayout:Landroid/widget/RelativeLayout;
    :cond_2
    iget v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    packed-switch v4, :pswitch_data_1

    .line 202
    :cond_3
    :goto_2
    :pswitch_0
    aget-object v4, p1, v1

    if-eqz v4, :cond_4

    .line 203
    const v4, 0x7f0700d0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 204
    .local v3, rLayout:Landroid/widget/RelativeLayout;
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 205
    aget-object v4, p1, v1

    iget v5, p3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    add-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    .end local v3           #rLayout:Landroid/widget/RelativeLayout;
    :cond_4
    move-object v4, p2

    .line 209
    goto :goto_0

    .line 155
    .end local v1           #index:I
    :pswitch_1
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030050

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    goto :goto_1

    .line 158
    :pswitch_2
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030051

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    goto :goto_1

    .line 161
    :pswitch_3
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030052

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 178
    .restart local v1       #index:I
    :pswitch_4
    aget-object v4, p1, v1

    if-eqz v4, :cond_3

    .line 179
    const v4, 0x7f0700d1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 180
    .local v0, cLayout:Landroid/widget/RelativeLayout;
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    aget-object v4, p1, v1

    iget v5, p3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    add-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 183
    goto :goto_2

    .line 186
    .end local v0           #cLayout:Landroid/widget/RelativeLayout;
    :pswitch_5
    aget-object v4, p1, v1

    if-eqz v4, :cond_5

    .line 187
    const v4, 0x7f0700d2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    .restart local v0       #cLayout:Landroid/widget/RelativeLayout;
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    aget-object v4, p1, v1

    iget v5, p3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    add-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 192
    .end local v0           #cLayout:Landroid/widget/RelativeLayout;
    :cond_5
    aget-object v4, p1, v1

    if-eqz v4, :cond_3

    .line 193
    const v4, 0x7f0700d3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 194
    .restart local v0       #cLayout:Landroid/widget/RelativeLayout;
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 195
    aget-object v4, p1, v1

    iget v5, p3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    add-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setClickActionForGridItem(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    new-instance v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;-><init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateGridView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 245
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    if-nez v8, :cond_0

    .line 301
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v8}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v4

    .line 252
    .local v4, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v7, 0x0

    .line 253
    .local v7, previousLength:I
    const/4 v0, 0x0

    .line 254
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_a

    .line 255
    aget-object v8, v4, v2

    iget-boolean v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v8, :cond_2

    .line 254
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_2
    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v8, :cond_1

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 262
    new-instance v3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    const/4 v8, 0x0

    add-int v9, v2, v7

    invoke-direct {v3, p0, v8, v9}, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;-><init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;II)V

    .line 263
    .local v3, info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iput v2, v3, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndex:I

    .line 264
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    aget-object v8, v4, v2

    iget-boolean v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShowMax:Z

    if-eqz v8, :cond_5

    .line 269
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-ge v5, v8, :cond_4

    .line 270
    iget v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    rem-int v8, v5, v8

    if-nez v8, :cond_3

    .line 271
    new-instance v1, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    .end local v1           #cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    add-int v8, v5, v7

    add-int/2addr v8, v0

    invoke-direct {v1, p0, v11, v8}, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;-><init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;II)V

    .line 272
    .restart local v1       #cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    iget-object v8, v1, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    iget v9, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    rem-int v9, v5, v9

    add-int v10, v5, v7

    aput v10, v8, v9

    .line 269
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 277
    :cond_4
    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    add-int/2addr v7, v8

    goto :goto_2

    .line 280
    .end local v5           #j:I
    :cond_5
    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sget v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    if-le v8, v9, :cond_7

    sget v8, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    add-int/lit8 v6, v8, -0x1

    .line 282
    .local v6, limit:I
    :goto_4
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_5
    if-ge v5, v6, :cond_8

    .line 283
    iget v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    rem-int v8, v5, v8

    if-nez v8, :cond_6

    .line 284
    new-instance v1, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    .end local v1           #cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    add-int v8, v5, v7

    add-int/2addr v8, v0

    invoke-direct {v1, p0, v11, v8}, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;-><init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;II)V

    .line 285
    .restart local v1       #cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    iget-object v8, v1, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    iget v9, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    rem-int v9, v5, v9

    add-int v10, v5, v7

    aput v10, v8, v9

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 280
    .end local v5           #j:I
    .end local v6           #limit:I
    :cond_7
    aget-object v8, v4, v2

    iget v6, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    goto :goto_4

    .line 289
    .restart local v5       #j:I
    .restart local v6       #limit:I
    :cond_8
    sget v8, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_9

    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sget v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    if-le v8, v9, :cond_9

    .line 291
    iget-object v8, v1, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    iget v9, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    add-int/lit8 v9, v9, -0x1

    sget v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    add-int/2addr v10, v7

    aput v10, v8, v9

    .line 294
    :cond_9
    aget-object v8, v4, v2

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    add-int/2addr v7, v8

    goto/16 :goto_2

    .line 300
    .end local v1           #cinfo:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    .end local v3           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    .end local v5           #j:I
    .end local v6           #limit:I
    :cond_a
    const-string v8, "IndexListGridAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculateGridView.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 86
    iget-boolean v4, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mbReadyToUpdate:Z

    if-nez v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v5

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    if-eqz v4, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, count:I
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v4}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v3

    .line 95
    .local v3, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 96
    aget-object v4, v3, v2

    iget-boolean v4, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v4, :cond_2

    .line 95
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_2
    aget-object v4, v3, v2

    iget v4, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    iget v6, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    div-int v6, v4, v6

    aget-object v4, v3, v2

    iget v4, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    iget v7, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    rem-int/2addr v4, v7

    if-nez v4, :cond_4

    move v4, v5

    :goto_3
    add-int v0, v6, v4

    .line 101
    .local v0, adCount:I
    sget v4, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    if-le v0, v4, :cond_3

    aget-object v4, v3, v2

    iget-boolean v4, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShowMax:Z

    if-nez v4, :cond_3

    .line 102
    sget v0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    .line 104
    :cond_3
    add-int/2addr v1, v0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    .end local v0           #adCount:I
    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v5, v1

    .line 111
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    .line 322
    .local v0, info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iget v1, v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    iget v2, v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndex:I

    invoke-interface {v1, v2}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .end local v0           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    const-string v1, "IndexListGridAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the position is wrong! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/IndexListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    .line 337
    .local v0, info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iget v1, v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    if-nez v1, :cond_0

    .line 338
    const-wide/16 v1, -0x1

    .line 345
    .end local v0           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :goto_0
    return-wide v1

    .line 340
    .restart local v0       #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :cond_0
    int-to-long v1, p1

    goto :goto_0

    .line 343
    .end local v0           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :cond_1
    const-string v1, "IndexListGridAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the position is wrong! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/IndexListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    iget v0, v0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    .line 315
    :goto_0
    return v0

    .line 313
    :cond_0
    const-string v0, "IndexListGridAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the position is wrong! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_3

    .line 119
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;

    .line 120
    .local v2, info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    iget v4, v2, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    iget v5, v2, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndex:I

    invoke-interface {v4, v5, p2, p3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexViewAt(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    .end local v2           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :goto_0
    return-object v0

    .line 126
    .restart local v2       #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    :cond_0
    const/4 v4, 0x4

    new-array v3, v4, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    .line 127
    .local v3, viewList:[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget v4, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->mItemPerRow:I

    if-ge v1, v4, :cond_2

    .line 128
    iget-object v4, v2, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    aget v4, v4, v1

    if-ltz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    iget-object v5, v2, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    aget v5, v5, v1

    invoke-interface {v4, v5, v6, p3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v1

    .line 132
    aget-object v4, v3, v1

    if-nez v4, :cond_1

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_2
    invoke-direct {p0, v3, p2, v2}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->prepareGrids([Landroid/view/View;Landroid/view/View;Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, ItemGridx:Landroid/view/View;
    goto :goto_0

    .line 142
    .end local v0           #ItemGridx:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #info:Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
    .end local v3           #viewList:[Landroid/view/View;
    :cond_3
    const-string v4, "IndexListGridAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the position is wrong! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 145
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method
