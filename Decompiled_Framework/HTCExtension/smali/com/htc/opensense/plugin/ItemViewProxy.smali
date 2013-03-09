.class public Lcom/htc/opensense/plugin/ItemViewProxy;
.super Ljava/lang/Object;
.source "ItemViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;,
        Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ItemViewProxy"

.field private static pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private layout_id:I

.field private mBackdoor:Z

.field private mInflateExterior:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    iput-boolean v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    return-void
.end method

.method private addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static obtain()Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 4

    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy;

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/opensense/plugin/ItemViewProxy;

    invoke-direct {v0}, Lcom/htc/opensense/plugin/ItemViewProxy;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lcom/htc/text/style/UrlDrawableSpan;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/text/style/UrlDrawableSpan;

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/htc/text/style/UrlDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;)V
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    if-eqz v6, :cond_5

    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :cond_3
    :goto_0
    if-nez v5, :cond_6

    new-instance v6, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    invoke-virtual {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->apply(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "backdoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "inflateExterior"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemLayoutId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    return v0
.end method

.method public getViewActions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    return-object v0
.end method

.method public recycle()V
    .locals 7

    iget-object v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->recycle()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    sget-object v6, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 3

    const-string v1, "setBackdoor"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p3, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "setInflateExterior"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p3, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    goto :goto_0
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 3

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 3

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {p2, v1, p3}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setItemLayout(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setNullity(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setObject(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "setOnClickListener"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 1

    const-string v0, "setOnTouchListener"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 3

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    return-void
.end method

.method public setTextColor(II)V
    .locals 1

    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1

    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setInt(ILjava/lang/String;I)V

    return-void
.end method
