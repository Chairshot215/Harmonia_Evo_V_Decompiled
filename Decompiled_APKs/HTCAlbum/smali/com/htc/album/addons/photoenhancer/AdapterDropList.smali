.class public Lcom/htc/album/addons/photoenhancer/AdapterDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterDropList.java"


# static fields
.field private static final FRAME_IDS:[I

.field private static FRAME_NAMES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_NAMES:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_NAMES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 54
    sget-object v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_IDS:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, iconView:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 72
    .local v1, textView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz p2, :cond_2

    .line 74
    const v2, 0x7f0a0041

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #iconView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .restart local v0       #iconView:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 77
    sget-object v2, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_IDS:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    :cond_1
    const v2, 0x7f0a0011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 80
    .restart local v1       #textView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v1, :cond_2

    .line 82
    sget-object v2, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->FRAME_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 83
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 86
    :cond_2
    return-object p2
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
