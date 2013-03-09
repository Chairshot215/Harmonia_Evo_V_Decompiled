.class public Lcom/htc/launcher/Workspace$OnLongClickReference;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLongClickReference"
.end annotation


# instance fields
.field private refListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnLongClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 567
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Workspace$OnLongClickReference;->refListener:Ljava/lang/ref/WeakReference;

    .line 568
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/Workspace$OnLongClickReference;->refListener:Ljava/lang/ref/WeakReference;

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$OnLongClickListener;Lcom/htc/launcher/Workspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/htc/launcher/Workspace$OnLongClickReference;-><init>(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 573
    iget-object v1, p0, Lcom/htc/launcher/Workspace$OnLongClickReference;->refListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    .line 574
    .local v0, l:Landroid/view/View$OnLongClickListener;
    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v1

    .line 577
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
