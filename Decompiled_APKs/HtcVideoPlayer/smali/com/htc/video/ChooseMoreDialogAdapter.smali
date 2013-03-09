.class public Lcom/htc/video/ChooseMoreDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseMoreDialogAdapter.java"


# static fields
.field private static final Tag:Ljava/lang/String;


# instance fields
.field private applicationImg:[Landroid/graphics/drawable/Drawable;

.field private applicationName:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field public mIsDisableTrim:Z

.field public mIsFromDLNA:Z

.field public mIsSEI3DMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/video/ChooseMoreDialogAdapter;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsDisableTrim:Z

    .line 24
    iput-boolean v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsSEI3DMode:Z

    .line 25
    iput-boolean v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsFromDLNA:Z

    .line 30
    iput-object p1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    invoke-direct {p0, p1}, Lcom/htc/video/ChooseMoreDialogAdapter;->loadListItemResource(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private loadListItemResource(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f040004

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f04001d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f040018

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f040006

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    .line 44
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20808c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method


# virtual methods
.method public changeMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 104
    sget-object v0, Lcom/htc/video/ChooseMoreDialogAdapter;->Tag:Ljava/lang/String;

    const-string v1, "changeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 113
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public changeVision(II)V
    .locals 3
    .parameter "vision"
    .parameter "choice"

    .prologue
    .line 89
    sget-object v0, Lcom/htc/video/ChooseMoreDialogAdapter;->Tag:Ljava/lang/String;

    const-string v1, "changeVision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 93
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p2

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 98
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/video/ChooseMoreDialogAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMoreItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    :cond_0
    const v2, 0x7f09000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 78
    .local v1, menuText:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f09000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, menuImage:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 81
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-object p2
.end method

.method public refreshItemResource(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 119
    iget-object v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    array-length v1, v6

    .line 120
    .local v1, index:I
    move v5, v1

    .line 122
    .local v5, tempIndex:I
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const v6, 0x7f040004

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const v6, 0x7f04001d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    const v6, 0x7f040018

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f040006

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 127
    .local v4, tempApplicationName:[Ljava/lang/String;
    const/4 v6, 0x4

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20808c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v9

    .line 133
    .local v3, tempApplicationImg:[Landroid/graphics/drawable/Drawable;
    iget-boolean v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsDisableTrim:Z

    if-eqz v6, :cond_0

    .line 135
    aput-object v10, v4, v8

    .line 136
    aput-object v10, v3, v8

    .line 137
    add-int/lit8 v5, v5, -0x1

    .line 140
    :cond_0
    iget-boolean v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsSEI3DMode:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsFromDLNA:Z

    if-eqz v6, :cond_2

    .line 142
    :cond_1
    aput-object v10, v4, v9

    .line 143
    aput-object v10, v3, v9

    .line 144
    add-int/lit8 v5, v5, -0x1

    .line 147
    :cond_2
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    .line 148
    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 151
    aget-object v6, v4, v2

    if-eqz v6, :cond_3

    .line 153
    iget-object v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v7, v4, v2

    aput-object v7, v6, v0

    .line 154
    iget-object v6, p0, Lcom/htc/video/ChooseMoreDialogAdapter;->applicationImg:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v3, v2

    aput-object v7, v6, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_4
    return-void
.end method
