.class public Lcom/htc/providers/uploads/uploadUI/StatusHelper;
.super Landroid/widget/BaseAdapter;
.source "StatusHelper.java"

# interfaces
.implements Lcom/htc/providers/uploads/uploadUI/UIConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;,
        Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;,
        Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x7f040010

.field private static final ERRORIDX:I = 0x2

.field public static final ERROR_DETAIL:I = 0x7f04000b

.field static final ITEMS_ID:[I = null

.field public static ItemCount:I = 0x0

.field static final MAXCACHELENGTH:I = 0xf4240

.field static final MOREACTIONS:[[I = null

.field private static final REMOVEIDX:I = 0x0

.field public static final REMOVE_FROM_LIST:I = 0x7f04000d

.field static final STATUS:[I = null

.field static final THUMBNAILSIZE:I = 0x7d0

.field private static final TRYAGAINIDX:I = 0x1

.field public static final TRY_AGAIN:I = 0x7f04000a

.field private static final sPICOCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static statusTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field public SetCorner:Z

.field public batchId:I

.field public complete:Z

.field currentItem:Lcom/htc/providers/uploads/UploadItem;

.field defaultBitmap:Landroid/graphics/Bitmap;

.field default_size:I

.field mInflater:Landroid/view/LayoutInflater;

.field mRoot:Landroid/view/View;

.field mutex:Ljava/lang/Object;

.field obserActivity:Landroid/app/Activity;

.field showingDialog:Landroid/content/DialogInterface;

.field statusListView:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v3, 0x7f040010

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 74
    sput v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->ItemCount:I

    .line 78
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    .line 81
    new-array v0, v5, [[I

    new-array v1, v2, [I

    aput v3, v1, v4

    aput-object v1, v0, v4

    new-array v1, v2, [I

    aput v3, v1, v4

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v2, [I

    const v3, 0x7f04000d

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->MOREACTIONS:[[I

    .line 84
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->ITEMS_ID:[I

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->sPICOCache:Ljava/util/HashMap;

    return-void

    .line 78
    nop

    :array_0
    .array-data 0x4
        0xc0t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xebt 0x1t 0x0t 0x0t
    .end array-data

    .line 81
    :array_1
    .array-data 0x4
        0x10t 0x0t 0x4t 0x7ft
        0xat 0x0t 0x4t 0x7ft
        0xbt 0x0t 0x4t 0x7ft
    .end array-data

    .line 84
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x4t 0x7ft
        0x6t 0x0t 0x4t 0x7ft
        0x7t 0x0t 0x4t 0x7ft
        0x8t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 117
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    iput-object v9, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->showingDialog:Landroid/content/DialogInterface;

    .line 76
    iput-boolean v10, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->SetCorner:Z

    .line 90
    const-string v4, "StatusHelper"

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->LOG_TAG:Ljava/lang/String;

    .line 104
    iput-boolean v8, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->complete:Z

    .line 106
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    .line 114
    const/16 v4, 0x32

    iput v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->default_size:I

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x208023c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 121
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    invoke-virtual {v4, v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 127
    .local v2, ta:Landroid/content/res/TypedArray;
    iget v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->default_size:I

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->default_size:I

    .line 128
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090026

    invoke-virtual {v4, v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 138
    .local v1, rel:Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->ITEMS_ID:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 139
    const v4, 0x2020010

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, tv:Landroid/widget/TextView;
    sget-object v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->ITEMS_ID:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 141
    sget-object v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    sget-object v7, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->MOREACTIONS:[[I

    aget-object v7, v7, v0

    invoke-direct {v6, p0, p1, v1, v7}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;-><init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;Landroid/content/Context;Landroid/widget/RelativeLayout;[I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1           #rel:Landroid/widget/RelativeLayout;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    .line 145
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v4, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v8, v10}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 149
    :cond_2
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 150
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->setDrawSelectorOnTop(Z)V

    .line 151
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusListView:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;

    invoke-direct {v5, p0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;-><init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 174
    return-void
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 556
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 558
    .local v4, height:I
    if-ge v3, v4, :cond_0

    .line 559
    mul-int v0, v4, p1

    div-int p2, v0, v3

    .line 563
    :goto_0
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 564
    .local v8, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v7, v0, v2

    .line 565
    .local v7, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 566
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 568
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 561
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #scaleHeight:F
    .end local v8           #scaleWidth:F
    :cond_0
    mul-int v0, v3, p2

    div-int p1, v0, v4

    goto :goto_0
.end method

.method public static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 622
    if-lt p0, p2, :cond_0

    if-ge p1, p3, :cond_1

    .line 623
    :cond_0
    const/4 v1, 0x0

    .line 628
    :goto_0
    return-object v1

    .line 625
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 628
    .local v0, ratio:F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    int-to-float v3, p0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method protected static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 589
    const-wide/16 v5, 0x0

    .line 591
    .local v5, size:J
    if-nez p0, :cond_0

    .line 592
    const-wide/16 v7, 0x0

    .line 600
    :goto_0
    return-wide v7

    .line 593
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 594
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 597
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 598
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 597
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #currentFile:Ljava/io/File;
    :cond_2
    move-wide v7, v5

    .line 600
    goto :goto_0
.end method


# virtual methods
.method public addNewItem(Lcom/htc/providers/uploads/UploadItem;)V
    .locals 5
    .parameter "fileItem"

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/htc/providers/uploads/UploadItem;->getStatus()I

    move-result v1

    .line 191
    .local v1, status:I
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 193
    :try_start_0
    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 204
    .local v0, base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->addItem(Lcom/htc/providers/uploads/UploadItem;)V

    .line 205
    monitor-exit v3

    .line 206
    return-void

    .line 196
    .end local v0           #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :cond_0
    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    :cond_1
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .restart local v0       #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    goto :goto_0

    .line 199
    .end local v0           #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :cond_2
    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .restart local v0       #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    goto :goto_0

    .line 202
    .end local v0           #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :cond_3
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    const/16 v4, 0x1eb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .restart local v0       #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    goto :goto_0

    .line 205
    .end local v0           #base:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cancelStatus(I)V
    .locals 3
    .parameter "batchId"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 403
    .local v0, NotificationMgr:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 404
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 405
    return-void
.end method

.method public clearAll()V
    .locals 5

    .prologue
    .line 177
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    const-string v2, "StatusHelper"

    const-string v4, "clear all"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 182
    .local v1, status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    invoke-virtual {v1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->clearNotifications()V

    goto :goto_0

    .line 186
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 184
    .restart local v0       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->notifyDataSetChanged()V

    .line 185
    iget-object v2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->ensureCacheSize(Ljava/lang/String;)V

    .line 186
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    return-void
.end method

.method public ensureCacheSize(Ljava/lang/String;)V
    .locals 6
    .parameter "photoPath"

    .prologue
    .line 579
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, cacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 582
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 583
    .local v2, currentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 586
    .end local v2           #currentFile:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, count:I
    sget-object v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 456
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    sget-object v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 458
    .local v2, status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    invoke-virtual {v2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getNotificationCount()I

    move-result v3

    .line 459
    .local v3, tmp:I
    if-lez v3, :cond_0

    .line 460
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v4

    goto :goto_0

    .line 463
    .end local v2           #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .end local v3           #tmp:I
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .parameter "position"

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, statusStart:I
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    sget-object v6, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    sget-object v7, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 469
    .local v3, targetStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 470
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    sget-object v6, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 471
    .local v1, status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    invoke-virtual {v1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getNotificationCount()I

    move-result v4

    .line 472
    .local v4, tmp:I
    if-lez v4, :cond_0

    .line 473
    add-int/lit8 v4, v4, 0x1

    .line 474
    move-object v3, v1

    .line 476
    :cond_0
    add-int v5, v2, v4

    if-le v5, p1, :cond_2

    .line 482
    .end local v1           #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .end local v4           #tmp:I
    :cond_1
    if-ne p1, v2, :cond_3

    .line 483
    iget-object v5, v3, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->titleView:Landroid/widget/RelativeLayout;

    .line 485
    :goto_1
    return-object v5

    .line 479
    .restart local v1       #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .restart local v4       #tmp:I
    :cond_2
    add-int/2addr v2, v4

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v1           #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .end local v4           #tmp:I
    :cond_3
    iget-object v5, v3, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    sub-int v6, p1, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 490
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStatus(Ljava/lang/String;)Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 99
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 494
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 496
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 497
    .local v1, item:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 498
    .local v4, totalcount:I
    const/4 v2, 0x0

    .line 499
    .local v2, listItem:Lcom/htc/widget/HtcListItem;
    instance-of v5, v1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 500
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v5, :cond_0

    .line 501
    if-nez p1, :cond_1

    .line 502
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v5, v0

    const v7, 0x208066b

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 509
    :cond_0
    :goto_0
    check-cast v1, Landroid/widget/RelativeLayout;

    .end local v1           #item:Ljava/lang/Object;
    monitor-exit v6

    .line 550
    :goto_1
    return-object v1

    .line 505
    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v5, v0

    const v7, 0x208066a

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 551
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #listItem:Lcom/htc/widget/HtcListItem;
    .end local v4           #totalcount:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 511
    .restart local v1       #item:Ljava/lang/Object;
    .restart local v2       #listItem:Lcom/htc/widget/HtcListItem;
    .restart local v4       #totalcount:I
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    instance-of v5, p2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6

    .line 514
    :cond_3
    iget-object v5, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v5, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 516
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v2, v0

    .line 517
    new-instance v3, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    move-object v0, v1

    check-cast v0, Lcom/htc/providers/uploads/UploadItem;

    move-object v5, v0

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v3, v5, v7}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;Z)V

    .line 519
    .local v3, tag:Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
    if-ne p1, v4, :cond_4

    .line 520
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 545
    :goto_2
    move-object v0, v1

    check-cast v0, Lcom/htc/providers/uploads/UploadItem;

    move-object v5, v0

    invoke-virtual {p0, p3, p2, v5}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->makeNotificationView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/htc/providers/uploads/UploadItem;)Landroid/view/View;

    move-result-object p2

    .line 547
    check-cast v1, Lcom/htc/providers/uploads/UploadItem;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->setUploadItem(Lcom/htc/providers/uploads/UploadItem;)V

    .line 549
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 550
    monitor-exit v6

    move-object v1, p2

    goto :goto_1

    .line 522
    .restart local v1       #item:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_5

    .line 523
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2

    .line 526
    :cond_5
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2

    .line 530
    .end local v3           #tag:Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
    :cond_6
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v2, v0

    .line 531
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    .line 532
    .restart local v3       #tag:Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
    if-ne p1, v4, :cond_7

    .line 533
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 541
    :goto_3
    move-object v0, v1

    check-cast v0, Lcom/htc/providers/uploads/UploadItem;

    move-object v5, v0

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->setSeparateID(Ljava/lang/String;)V

    goto :goto_2

    .line 535
    :cond_7
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8

    .line 536
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_3

    .line 539
    :cond_8
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/providers/uploads/UploadItem;

    return v0
.end method

.method public makeNotificationView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/htc/providers/uploads/UploadItem;)Landroid/view/View;
    .locals 12
    .parameter "parent"
    .parameter "row"
    .parameter "photo"

    .prologue
    .line 409
    const v8, 0x7f080007

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 410
    .local v4, picture:Lcom/htc/widget/HtcListItemQuickContactBadge;
    const/4 v2, 0x0

    .line 411
    .local v2, iconDrawable:Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
    sget-object v8, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->sPICOCache:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 413
    .local v5, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;>;"
    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #iconDrawable:Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
    check-cast v2, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;

    .line 416
    .restart local v2       #iconDrawable:Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
    :cond_0
    if-nez v2, :cond_1

    .line 417
    const-string v8, "StatusHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get icon bitmap "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v2, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;

    .end local v2           #iconDrawable:Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
    iget-object v8, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->generateUrl(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v2, v8, v9, v10}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 423
    .restart local v2       #iconDrawable:Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
    new-instance v8, Ljava/io/File;

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    sget-object v8, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->sPICOCache:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_1
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    .line 428
    .local v1, badge:Lcom/htc/widget/QuickContactBadge;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    const v8, 0x7f080009

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    .line 431
    .local v0, ItemImage:Lcom/htc/widget/HtcListItemImageButton;
    iget-object v8, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    const-string v9, "common_more_view"

    const v10, 0x2080065

    invoke-static {v8, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 435
    const v8, 0x7f080008

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    .line 437
    .local v7, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 439
    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getTotalByte()D

    move-result-wide v8

    double-to-int v8, v8

    div-int/lit16 v6, v8, 0x400

    .line 440
    .local v6, size:I
    if-nez v6, :cond_2

    .line 441
    new-instance v3, Ljava/io/File;

    invoke-interface {p3}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v3, photoFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 443
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 446
    .end local v3           #photoFile:Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f040024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 450
    return-object p2
.end method

.method public showTryAgain()Z
    .locals 2

    .prologue
    .line 633
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    const/16 v1, 0x1eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getNotificationCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchStatus(II)Z
    .locals 9
    .parameter "to"
    .parameter "id"

    .prologue
    .line 375
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 376
    :try_start_0
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 377
    .local v4, toStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    const/4 v1, 0x0

    .line 378
    .local v1, fromStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    const/4 v3, 0x0

    .line 379
    .local v3, item:Lcom/htc/providers/uploads/UploadItem;
    const-string v5, "StatusHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 381
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    aget v0, v5, v2

    .line 382
    .local v0, from:I
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    aget v5, v5, v2

    if-eq v5, p1, :cond_2

    .line 383
    sget-object v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->statusTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fromStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    check-cast v1, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 384
    .restart local v1       #fromStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    invoke-virtual {v1, p2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getItemById(I)Lcom/htc/providers/uploads/UploadItem;

    move-result-object v3

    .line 386
    if-eqz v3, :cond_2

    .line 390
    .end local v0           #from:I
    :cond_0
    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    .line 391
    :cond_1
    const/4 v5, 0x0

    monitor-exit v6

    .line 397
    :goto_1
    return v5

    .line 380
    .restart local v0       #from:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v0           #from:I
    :cond_3
    invoke-virtual {v1, v3}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->removeItem(Lcom/htc/providers/uploads/UploadItem;)Z

    .line 393
    invoke-interface {v3, p1}, Lcom/htc/providers/uploads/UploadItem;->setStatus(I)V

    .line 394
    invoke-virtual {v4, v3}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->addItem(Lcom/htc/providers/uploads/UploadItem;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->notifyDataSetChanged()V

    .line 397
    const/4 v5, 0x1

    monitor-exit v6

    goto :goto_1

    .line 398
    .end local v1           #fromStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    .end local v2           #i:I
    .end local v3           #item:Lcom/htc/providers/uploads/UploadItem;
    .end local v4           #toStatus:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
