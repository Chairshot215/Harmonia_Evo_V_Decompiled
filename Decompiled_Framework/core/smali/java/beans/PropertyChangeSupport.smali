.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private transient listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient sourceBean:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "source"

    const-class v4, Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "children"

    const-class v4, Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "propertyChangeSupportSerializedDataVersion"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    return-void
.end method

.method private equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z
    .locals 5

    const/4 v3, 0x0

    :goto_0
    instance-of v4, p3, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v4, :cond_3

    move-object v2, p3

    check-cast v2, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p3

    if-nez p1, :cond_2

    instance-of v4, p2, Ljava/beans/PropertyChangeListenerProxy;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p2

    :cond_2
    invoke-static {p1, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    invoke-static {p2, p3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v6

    const-string v7, "source"

    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    const-string v7, "children"

    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/beans/PropertyChangeSupport;

    iget-object v7, v7, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/beans/PropertyChangeListener;

    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    new-instance v9, Ljava/beans/PropertyChangeListenerProxy;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v7, v5}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    if-eqz v4, :cond_2

    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    instance-of v7, v4, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v7, :cond_0

    instance-of v7, v4, Ljava/io/Serializable;

    if-nez v7, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeListener;

    instance-of v7, v2, Ljava/io/Serializable;

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_1

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-direct {v1, v7}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v7, v1, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v6

    const-string v7, "source"

    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "children"

    invoke-virtual {v6, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    instance-of v7, v4, Ljava/io/Serializable;

    if-eqz v7, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    new-instance v1, Ljava/beans/PropertyChangeListenerProxy;

    invoke-direct {v1, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .locals 2

    if-eq p3, p4, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .locals 2

    if-eq p3, p4, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 7

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyChangeListener;

    :goto_1
    instance-of v6, v3, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v6, :cond_3

    move-object v5, v3

    check-cast v5, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyChangeListener;

    goto :goto_1

    :cond_3
    invoke-interface {v3, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    goto :goto_0
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 2

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    instance-of v3, v1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/beans/PropertyChangeListener;

    return-object v3
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    instance-of v2, v1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v1}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v1}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 3

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    invoke-direct {p0, p1, p2, v1}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
