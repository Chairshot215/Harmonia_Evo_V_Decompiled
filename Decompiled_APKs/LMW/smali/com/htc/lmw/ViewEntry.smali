.class public Lcom/htc/lmw/ViewEntry;
.super Ljava/lang/Object;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/ViewEntry$View2Text;,
        Lcom/htc/lmw/ViewEntry$View2TextCheckbox;,
        Lcom/htc/lmw/ViewEntry$View2TextImage;,
        Lcom/htc/lmw/ViewEntry$View1Text;,
        Lcom/htc/lmw/ViewEntry$View2TextRadio;,
        Lcom/htc/lmw/ViewEntry$View2TextBase;
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected enabled:Z

.field protected id:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected layoutId:I

.field protected primaryText:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"

    .prologue
    .line 23
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry;-><init>(Landroid/content/Context;IIIZ)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"
    .parameter "enabled"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/htc/lmw/ViewEntry;->context:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/htc/lmw/ViewEntry;->layoutId:I

    .line 33
    iput p4, p0, Lcom/htc/lmw/ViewEntry;->primaryText:I

    .line 34
    iput p3, p0, Lcom/htc/lmw/ViewEntry;->id:I

    .line 35
    iput-boolean p5, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/lmw/ViewEntry;->inflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lmw/ViewEntry;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/htc/lmw/ViewEntry;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/ViewEntry;->view:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/htc/lmw/ViewEntry;->view:Landroid/view/View;

    iget v1, p0, Lcom/htc/lmw/ViewEntry;->id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 42
    iget-object v0, p0, Lcom/htc/lmw/ViewEntry;->view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/htc/lmw/ViewEntry;->view:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/lmw/ViewEntry;->view:Landroid/view/View;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    .line 28
    return-void
.end method
