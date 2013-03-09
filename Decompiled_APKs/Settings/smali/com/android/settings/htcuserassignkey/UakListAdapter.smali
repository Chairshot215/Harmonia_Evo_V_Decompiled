.class public final Lcom/android/settings/htcuserassignkey/UakListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UakListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/htcuserassignkey/UakListAdapter$OnAddAdapterListener;,
        Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;,
        Lcom/android/settings/htcuserassignkey/UakListAdapter$UiRefreshListener;
    }
.end annotation


# static fields
.field public static localLOGV:Z


# instance fields
.field private isAddAdapterReady:Z

.field private listadaptertime:J

.field private mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

.field private mContext:Landroid/content/Context;

.field private mGroupNum:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mKeepPosition:[I

.field private mLevel:I

.field private mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

.field private mOnAddAdapterListener:Lcom/android/settings/htcuserassignkey/UakListAdapter$OnAddAdapterListener;

.field private mSelected:[I

.field private mTarget:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Z)V
    .locals 6
    .parameter "target"
    .parameter "context"
    .parameter "forFolder"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object v4, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    .line 33
    iput v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    .line 34
    iput v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mGroupNum:I

    .line 36
    iput-object v4, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mOnAddAdapterListener:Lcom/android/settings/htcuserassignkey/UakListAdapter$OnAddAdapterListener;

    .line 39
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mSelected:[I

    .line 40
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->listadaptertime:J

    .line 41
    iput-boolean v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    .line 42
    iput-object v4, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;

    .line 43
    iput-object v4, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    .line 45
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    .line 47
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    aput v3, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    if-nez v1, :cond_1

    .line 54
    iput-boolean v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    .line 55
    new-instance v1, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    invoke-direct {v1, p0}, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;-><init>(Lcom/android/settings/htcuserassignkey/UakListAdapter;)V

    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    .line 56
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    invoke-virtual {v1}, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->start()V

    .line 60
    :cond_1
    iput-object p2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mContext:Landroid/content/Context;

    .line 61
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mIconWidth:I

    .line 62
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mIconHeight:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/htcuserassignkey/UakListAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/htcuserassignkey/UakListAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->listadaptertime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/settings/htcuserassignkey/UakListAdapter;Lcom/android/settings/htcuserassignkey/UakAdapter;)Lcom/android/settings/htcuserassignkey/UakAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/htcuserassignkey/UakListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    return p1
.end method

.method private updateData()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    .line 248
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    iget v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mSelected:[I

    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/htcuserassignkey/UakAdapter;->setAdapter(II)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-boolean v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "idx"

    .prologue
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getKeepPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    if-nez v2, :cond_1

    move v0, v1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    .line 258
    .local v0, keepPosition:I
    iget v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aget v0, v2, v3

    .line 261
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getCount()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 262
    :cond_2
    const/4 v0, 0x0

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aput v1, v2, v3

    goto :goto_0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    return v0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 127
    const v0, 0x7f0c050e

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getTitleString()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v11, :cond_0

    .line 153
    const/4 v10, 0x0

    .line 222
    :goto_0
    return-object v10

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .line 161
    .local v5, item:Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .local v10, view:Landroid/view/View;
    move-object v8, v10

    .line 162
    check-cast v8, Landroid/widget/TextView;

    .line 163
    .local v8, textView:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 164
    .local v4, icons:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v11, 0x4

    if-ge v3, v11, :cond_2

    .line 165
    aget-object v11, v4, v3

    if-eqz v11, :cond_1

    .line 166
    sget-boolean v11, Lcom/android/settings/htcuserassignkey/UakListAdapter;->localLOGV:Z

    if-eqz v11, :cond_1

    const-string v11, "Uakapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ListAdapter(53) - icon["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]not null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v4, v11

    if-eqz v11, :cond_3

    .line 170
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mIconWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mIconHeight:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->haseNextLevel(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200c9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 174
    .local v9, tmpIcon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v9, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    .end local v9           #tmpIcon:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 209
    invoke-virtual {v8}, Landroid/widget/TextView;->clearFocus()V

    .line 210
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setPressed(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0041

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 219
    .local v6, marginLeft:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0042

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 220
    .local v7, marginRight:I
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v10, v6, v11, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0
.end method

.method public getWidgetView(Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "item"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    move-object v0, v1

    .line 138
    check-cast v0, Landroid/widget/FrameLayout;

    .line 142
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 143
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 146
    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    return-object v1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    iput v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    .line 274
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    iget v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/htcuserassignkey/UakAdapter;->setAdapter(II)V

    .line 275
    iput v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mGroupNum:I

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->resetItems()V

    goto :goto_0
.end method

.method public setClick(II)V
    .locals 2
    .parameter "selectedId"
    .parameter "position"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    .line 236
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mSelected:[I

    iget v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    aput p1, v0, v1

    .line 237
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mKeepPosition:[I

    iget v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    aput p2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;

    iget v1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLevel:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/htcuserassignkey/UakAdapter;->setAdapter(II)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setHeightPriority()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mLoadAddAdapterThread:Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->needUpSpeed()V

    .line 69
    :cond_0
    return-void
.end method

.method public setOnAddAdapterListener(Lcom/android/settings/htcuserassignkey/UakListAdapter$OnAddAdapterListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter;->mOnAddAdapterListener:Lcom/android/settings/htcuserassignkey/UakListAdapter$OnAddAdapterListener;

    .line 290
    return-void
.end method
