.class public Lcom/htc/lmw/AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppAdapter.java"


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private checkBoxDrawableId:I

.field private inflater:Landroid/view/LayoutInflater;

.field private itemLayoutId:I

.field private sizeKBFormatString:Ljava/lang/String;

.field private sizeMBFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "itemLayoutId"
    .parameter "checkBoxDrawableId"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->sizeMBFormatString:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->sizeKBFormatString:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->apps:Ljava/util/List;

    .line 26
    iput p2, p0, Lcom/htc/lmw/AppAdapter;->itemLayoutId:I

    .line 27
    iput p3, p0, Lcom/htc/lmw/AppAdapter;->checkBoxDrawableId:I

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050051

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->sizeMBFormatString:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050052

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/AppAdapter;->sizeKBFormatString:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/lmw/AppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/lmw/AppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/htc/lmw/AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 63
    .local v0, appInfo:Lcom/htc/lmw/AppInfo;
    iget-object v2, p0, Lcom/htc/lmw/AppAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/htc/lmw/AppAdapter;->sizeMBFormatString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/lmw/AppAdapter;->sizeKBFormatString:Ljava/lang/String;

    iget v6, p0, Lcom/htc/lmw/AppAdapter;->checkBoxDrawableId:I

    iget v7, p0, Lcom/htc/lmw/AppAdapter;->itemLayoutId:I

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/lmw/Customize;->getListView(Lcom/htc/lmw/AppInfo;Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setApplications(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    iput-object p1, p0, Lcom/htc/lmw/AppAdapter;->apps:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/htc/lmw/AppAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
