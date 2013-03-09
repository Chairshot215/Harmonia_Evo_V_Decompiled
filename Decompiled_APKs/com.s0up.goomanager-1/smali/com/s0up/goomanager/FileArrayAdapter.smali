.class public Lcom/s0up/goomanager/FileArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/s0up/goomanager/FileListOption;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private id:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s0up/goomanager/FileListOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/s0up/goomanager/FileListOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/s0up/goomanager/FileListOption;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput-object p1, p0, Lcom/s0up/goomanager/FileArrayAdapter;->c:Landroid/content/Context;

    .line 22
    iput p2, p0, Lcom/s0up/goomanager/FileArrayAdapter;->id:I

    .line 23
    iput-object p3, p0, Lcom/s0up/goomanager/FileArrayAdapter;->items:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/s0up/goomanager/FileListOption;
    .locals 1
    .parameter "i"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/s0up/goomanager/FileArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/FileListOption;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FileArrayAdapter;->getItem(I)Lcom/s0up/goomanager/FileListOption;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    move-object v3, p2

    .line 32
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 33
    iget-object v5, p0, Lcom/s0up/goomanager/FileArrayAdapter;->c:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 34
    .local v4, vi:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/s0up/goomanager/FileArrayAdapter;->id:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 36
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/s0up/goomanager/FileArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/FileListOption;

    .line 37
    .local v0, o:Lcom/s0up/goomanager/FileListOption;
    if-eqz v0, :cond_2

    .line 38
    const v5, 0x7f09000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, t1:Landroid/widget/TextView;
    const v5, 0x7f090010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, t2:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/s0up/goomanager/FileListOption;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/s0up/goomanager/FileListOption;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .end local v1           #t1:Landroid/widget/TextView;
    .end local v2           #t2:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
