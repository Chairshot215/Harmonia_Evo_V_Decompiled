.class public Ljava/beans/PropertyChangeListenerProxy;
.super Ljava/util/EventListenerProxy;
.source "PropertyChangeListenerProxy.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/util/EventListenerProxy;-><init>(Ljava/util/EventListener;)V

    iput-object p1, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
