.class Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ControlButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BubbleAdapter"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const-class v0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/modules/ui/widget/BubbleButton;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 377
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    .line 378
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 397
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
    .line 403
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 409
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move-object v2, p2

    .line 426
    .end local p2
    .local v2, convertView:Landroid/view/View;
    :goto_0
    return-object v2

    .line 412
    .end local v2           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 414
    .local v0, bubbleButton:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-nez p2, :cond_3

    .line 416
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 417
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_2

    move-object v2, p2

    .line 418
    .end local p2
    .restart local v2       #convertView:Landroid/view/View;
    goto :goto_0

    .line 420
    .end local v2           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 421
    .local v3, inflator:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/htc/widget/HtcListItem;

    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflator:Landroid/view/LayoutInflater;
    .restart local p2
    :cond_3
    move-object v4, p2

    .line 424
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/BubbleButton;->loadDataToView(Lcom/htc/widget/HtcListItem;)V

    move-object v2, p2

    .line 426
    .end local p2
    .restart local v2       #convertView:Landroid/view/View;
    goto :goto_0
.end method
