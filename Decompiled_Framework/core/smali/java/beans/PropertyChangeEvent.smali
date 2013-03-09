.class public Ljava/beans/PropertyChangeEvent;
.super Ljava/util/EventObject;
.source "PropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x61bcac98a722147bL


# instance fields
.field newValue:Ljava/lang/Object;

.field oldValue:Ljava/lang/Object;

.field propagationId:Ljava/lang/Object;

.field propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    iput-object p3, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    iput-object p4, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropagationId()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setPropagationId(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    return-void
.end method
