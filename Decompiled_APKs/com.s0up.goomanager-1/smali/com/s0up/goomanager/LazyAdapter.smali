.class public Lcom/s0up/goomanager/LazyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LazyAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private caption:[Ljava/lang/String;

.field private data:[Ljava/lang/String;

.field public imageLoader:Lcom/s0up/goomanager/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/s0up/goomanager/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "a"
    .parameter "d"
    .parameter "caption"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/s0up/goomanager/LazyAdapter;->activity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/s0up/goomanager/LazyAdapter;->data:[Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/s0up/goomanager/LazyAdapter;->caption:[Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/s0up/goomanager/LazyAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/s0up/goomanager/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    new-instance v0, Lcom/s0up/goomanager/ImageLoader;

    iget-object v1, p0, Lcom/s0up/goomanager/LazyAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s0up/goomanager/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/LazyAdapter;->imageLoader:Lcom/s0up/goomanager/ImageLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/s0up/goomanager/LazyAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    move-object v2, p2

    .line 43
    .local v2, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 44
    sget-object v3, Lcom/s0up/goomanager/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/s0up/goomanager/LazyAdapter;->caption:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/s0up/goomanager/LazyAdapter;->caption:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, image:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/s0up/goomanager/LazyAdapter;->caption:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lcom/s0up/goomanager/LazyAdapter;->imageLoader:Lcom/s0up/goomanager/ImageLoader;

    iget-object v4, p0, Lcom/s0up/goomanager/LazyAdapter;->data:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4, v0}, Lcom/s0up/goomanager/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 53
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 51
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
