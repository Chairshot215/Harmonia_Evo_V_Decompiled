.class public Ljava/beans/IndexedPropertyChangeEvent;
.super Ljava/beans/PropertyChangeEvent;
.source "IndexedPropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x471ad2af2ec1996L


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p5, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    return v0
.end method
