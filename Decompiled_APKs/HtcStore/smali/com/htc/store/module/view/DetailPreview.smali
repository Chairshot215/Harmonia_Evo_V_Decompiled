.class public Lcom/htc/store/module/view/DetailPreview;
.super Ljava/lang/Object;
.source "DetailPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/view/DetailPreview$1;,
        Lcom/htc/store/module/view/DetailPreview$Location;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount_1stRow:I

.field private mCount_2ndRow:I

.field private mDisplay:Landroid/view/Display;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocationArray:[Lcom/htc/store/module/view/DetailPreview$Location;

.field private mPadding:I

.field private mPreviewArray:[Landroid/widget/ImageView;

.field private mPreviewHeight_1stRow:I

.field private mPreviewHeight_2ndRow:I

.field private mPreviewPadding_1stRow:I

.field private mPreviewPadding_2ndRow:I

.field private mPreviewWidth_1stRow:I

.field private mPreviewWidth_2ndRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/view/DetailPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mContext:Landroid/content/Context;

    .line 21
    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    .line 23
    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    .line 24
    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mLocationArray:[Lcom/htc/store/module/view/DetailPreview$Location;

    .line 26
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    .line 27
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    .line 28
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    .line 44
    iput-object p1, p0, Lcom/htc/store/module/view/DetailPreview;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    .line 47
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 48
    .local v0, manager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    .line 49
    return-void
.end method

.method private calculatePreviewLocation(I)Lcom/htc/store/module/view/DetailPreview$Location;
    .locals 9
    .parameter "position"

    .prologue
    .line 158
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    if-ge p1, v7, :cond_1

    .line 159
    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    .line 160
    .local v6, width:I
    iget v1, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_1stRow:I

    .line 161
    .local v1, height:I
    const/4 v5, 0x0

    .line 162
    .local v5, row:I
    move v0, p1

    .line 163
    .local v0, column:I
    const/4 v4, 0x0

    .line 164
    .local v4, margin_top:I
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_1stRow:I

    add-int/2addr v7, v6

    mul-int v3, v7, v0

    .line 174
    .local v3, margin_left:I
    :goto_0
    iget-object v7, p0, Lcom/htc/store/module/view/DetailPreview;->mLocationArray:[Lcom/htc/store/module/view/DetailPreview$Location;

    aget-object v2, v7, p1

    .line 175
    .local v2, loc:Lcom/htc/store/module/view/DetailPreview$Location;
    if-nez v2, :cond_0

    .line 176
    new-instance v2, Lcom/htc/store/module/view/DetailPreview$Location;

    .end local v2           #loc:Lcom/htc/store/module/view/DetailPreview$Location;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/store/module/view/DetailPreview$Location;-><init>(Lcom/htc/store/module/view/DetailPreview;Lcom/htc/store/module/view/DetailPreview$1;)V

    .line 177
    .restart local v2       #loc:Lcom/htc/store/module/view/DetailPreview$Location;
    iget-object v7, p0, Lcom/htc/store/module/view/DetailPreview;->mLocationArray:[Lcom/htc/store/module/view/DetailPreview$Location;

    aput-object v2, v7, p1

    .line 180
    :cond_0
    iput v6, v2, Lcom/htc/store/module/view/DetailPreview$Location;->width:I

    .line 181
    iput v1, v2, Lcom/htc/store/module/view/DetailPreview$Location;->height:I

    .line 182
    iput v4, v2, Lcom/htc/store/module/view/DetailPreview$Location;->margin_top:I

    .line 183
    iput v3, v2, Lcom/htc/store/module/view/DetailPreview$Location;->margin_left:I

    .line 185
    return-object v2

    .line 166
    .end local v0           #column:I
    .end local v1           #height:I
    .end local v2           #loc:Lcom/htc/store/module/view/DetailPreview$Location;
    .end local v3           #margin_left:I
    .end local v4           #margin_top:I
    .end local v5           #row:I
    .end local v6           #width:I
    :cond_1
    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    .line 167
    .restart local v6       #width:I
    iget v1, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_2ndRow:I

    .line 168
    .restart local v1       #height:I
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    div-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x1

    .line 169
    .restart local v5       #row:I
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    rem-int v0, v7, v8

    .line 170
    .restart local v0       #column:I
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    add-int/2addr v7, v1

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_1stRow:I

    add-int/2addr v7, v8

    sub-int v4, v7, v1

    .line 171
    .restart local v4       #margin_top:I
    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_2ndRow:I

    add-int/2addr v7, v6

    mul-int v3, v7, v0

    .restart local v3       #margin_left:I
    goto :goto_0
.end method

.method private createPreview(I)Landroid/widget/ImageView;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/store/module/view/DetailPreview;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v2, view:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/htc/store/module/view/DetailPreview;->calculatePreviewLocation(I)Lcom/htc/store/module/view/DetailPreview$Location;

    move-result-object v0

    .line 150
    .local v0, loc:Lcom/htc/store/module/view/DetailPreview$Location;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Lcom/htc/store/module/view/DetailPreview$Location;->width:I

    iget v4, v0, Lcom/htc/store/module/view/DetailPreview$Location;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v0, Lcom/htc/store/module/view/DetailPreview$Location;->margin_left:I

    iget v4, v0, Lcom/htc/store/module/view/DetailPreview$Location;->margin_top:I

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    iget-object v3, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-object v2
.end method

.method private updatePreviewLocation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 118
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    array-length v3, v5

    .line 119
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 120
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    aget-object v4, v5, v0

    .line 121
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/htc/store/module/view/DetailPreview;->calculatePreviewLocation(I)Lcom/htc/store/module/view/DetailPreview$Location;

    move-result-object v1

    .line 123
    .local v1, loc:Lcom/htc/store/module/view/DetailPreview$Location;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v1, Lcom/htc/store/module/view/DetailPreview$Location;->width:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    iget v5, v1, Lcom/htc/store/module/view/DetailPreview$Location;->height:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 126
    iget v5, v1, Lcom/htc/store/module/view/DetailPreview$Location;->margin_left:I

    iget v6, v1, Lcom/htc/store/module/view/DetailPreview$Location;->margin_top:I

    invoke-virtual {v2, v5, v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    .end local v1           #loc:Lcom/htc/store/module/view/DetailPreview$Location;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v4           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPreviewHeight(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    if-ge p1, v0, :cond_0

    .line 73
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_1stRow:I

    .line 75
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_2ndRow:I

    goto :goto_0
.end method

.method public getPreviewWidth(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    if-ge p1, v0, :cond_0

    .line 66
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    .line 68
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    goto :goto_0
.end method

.method public setPreviewCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 56
    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    .line 57
    new-array v0, p1, [Lcom/htc/store/module/view/DetailPreview$Location;

    iput-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mLocationArray:[Lcom/htc/store/module/view/DetailPreview$Location;

    goto :goto_0
.end method

.method public setPreviewDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "position"
    .parameter "drawable"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 133
    sget-object v0, Lcom/htc/store/module/view/DetailPreview;->TAG:Ljava/lang/String;

    const-string v1, "position exceeds preview size !!"

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/htc/store/module/view/DetailPreview;->createPreview(I)Landroid/widget/ImageView;

    move-result-object v1

    aput-object v1, v0, p1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/16 v4, 0x96

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/store/util/AnimationUtils;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 141
    iget-object v0, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewArray:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0

    .line 79
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f090001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    .line 81
    const v5, 0x7f090002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    .line 82
    const v5, 0x7f08002d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    .line 83
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mLayout:Landroid/widget/RelativeLayout;

    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    iget v8, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    iget v9, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 85
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-double v7, v7

    div-double v1, v5, v7

    .line 86
    .local v1, ratio:D
    cmpg-double v5, v1, v10

    if-gez v5, :cond_0

    .line 87
    div-double v1, v10, v1

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 89
    .local v4, temp:I
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    div-int v5, v4, v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    .line 90
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    mul-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 91
    .local v0, diff:I
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    if-le v5, v0, :cond_1

    .line 92
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_1stRow:I

    .line 93
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    .line 99
    :goto_0
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_1stRow:I

    .line 101
    iget-object v5, p0, Lcom/htc/store/module/view/DetailPreview;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    iget v7, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 102
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    div-int v5, v4, v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    .line 103
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    iget v6, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    mul-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 104
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    if-le v5, v0, :cond_2

    .line 105
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_2ndRow:I

    .line 106
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    .line 112
    :goto_1
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewHeight_2ndRow:I

    .line 114
    invoke-direct {p0}, Lcom/htc/store/module/view/DetailPreview;->updatePreviewLocation()V

    .line 115
    return-void

    .line 95
    :cond_1
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_1stRow:I

    add-int/lit8 v5, v5, -0x1

    sub-int v4, v5, v0

    .line 96
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_1stRow:I

    .line 97
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_1stRow:I

    goto :goto_0

    .line 108
    :cond_2
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mCount_2ndRow:I

    add-int/lit8 v5, v5, -0x1

    sub-int v4, v5, v0

    .line 109
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPadding:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewPadding_2ndRow:I

    .line 110
    iget v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/store/module/view/DetailPreview;->mPreviewWidth_2ndRow:I

    goto :goto_1
.end method
