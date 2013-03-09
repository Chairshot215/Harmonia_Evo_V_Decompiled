.class public Lcom/google/appinventor/components/runtime/EventDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/EventDispatcher$1;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mapDispatchDelegateToEventRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;",
            ">;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$300(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v3, v0, p3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static varargs dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2, v0, p0, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;-><init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$1;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method private static removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    return-object p0
.end method

.method public static unregisterAllEventsForDelegation()V
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    #getter for: Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
