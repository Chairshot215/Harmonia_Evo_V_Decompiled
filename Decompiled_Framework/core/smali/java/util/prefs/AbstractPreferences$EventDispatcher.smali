.class Ljava/util/prefs/AbstractPreferences$EventDispatcher;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatcher"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EventListener;

    move-object v0, v3

    check-cast v0, Ljava/util/prefs/NodeChangeListener;

    move-object v2, v0

    invoke-interface {v2, p1}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    check-cast v1, Ljava/util/prefs/NodeChangeListener;

    invoke-interface {v1, p1}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/PreferenceChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    check-cast v1, Ljava/util/prefs/PreferenceChangeListener;

    invoke-interface {v1, p1}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private getEventObject()Ljava/util/EventObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventObject;

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->getEventObject()Ljava/util/EventObject;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    #getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    #getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of v3, v1, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/util/prefs/PreferenceChangeEvent;

    #getter for: Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V

    goto :goto_0
.end method
