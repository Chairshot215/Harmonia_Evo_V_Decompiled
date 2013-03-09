.class public Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
.super Ljava/lang/Object;
.source "DropEventListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DropEventListener"


# instance fields
.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V
    .locals 1
    .parameter "handler"
    .parameter "zone"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method private unbindAll()V
    .locals 6

    .prologue
    .line 60
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    monitor-enter v5

    .line 61
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 63
    .local v3, sources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/fusion/fx/IMessageSource<Lcom/htc/fusion/fx/FxDraggable;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/IMessageSource;

    .line 64
    .local v2, s:Lcom/htc/fusion/fx/IMessageSource;,"Lcom/htc/fusion/fx/IMessageSource<Lcom/htc/fusion/fx/FxDraggable;>;"
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/MessageListener;

    .line 65
    .local v1, l:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/FxDraggable;>;"
    invoke-interface {v2, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/FxDraggable;>;"
    .end local v2           #s:Lcom/htc/fusion/fx/IMessageSource;,"Lcom/htc/fusion/fx/IMessageSource<Lcom/htc/fusion/fx/FxDraggable;>;"
    .end local v3           #sources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/fusion/fx/IMessageSource<Lcom/htc/fusion/fx/FxDraggable;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 68
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 69
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    return-void
.end method


# virtual methods
.method bindEvent(Lcom/htc/fusion/fx/IMessageSource;Lcom/htc/fusion/fx/MessageListener;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, source:Lcom/htc/fusion/fx/IMessageSource;,"Lcom/htc/fusion/fx/IMessageSource<Lcom/htc/fusion/fx/FxDraggable;>;"
    .local p2, handler:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/FxDraggable;>;"
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {p1, p2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 33
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->unbindAll()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method public handleEvent(Lcom/htc/fusion/fx/FxDraggable;Lcom/htc/android/rosie/home/fxcontrol/DropZone;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V
    .locals 6
    .parameter "drag"
    .parameter "drop"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v2, "DropBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] DropEventListener.handleEvent() state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v2, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    .line 41
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getAction()Ljava/lang/Runnable;

    move-result-object v0

    .local v0, action:Ljava/lang/Runnable;
    move-object v1, p1

    .line 42
    check-cast v1, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 43
    .local v1, dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    .line 44
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .end local v0           #action:Ljava/lang/Runnable;
    .end local v1           #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v2, :cond_3

    .line 47
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "DropEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    move-object v1, p1

    .line 49
    check-cast v1, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 50
    .restart local v1       #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    iget v2, p2, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mOverlayColor:I

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    goto :goto_0

    .line 51
    .end local v1           #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    :cond_3
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v2, :cond_0

    .line 52
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "DropEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " give up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    move-object v1, p1

    .line 54
    check-cast v1, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 55
    .restart local v1       #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    goto :goto_0
.end method
