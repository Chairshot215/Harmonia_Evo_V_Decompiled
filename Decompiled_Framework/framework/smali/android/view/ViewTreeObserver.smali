.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return-void
.end method

.method private checkIsAlive()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private kill()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnPreDraw()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    return v0
.end method

.method final dispatchOnScrollChanged()V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_4
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    return-void

    :cond_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_1

    :cond_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    goto :goto_2

    :cond_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_3

    :cond_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_4
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
