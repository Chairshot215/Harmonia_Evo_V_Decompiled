.class public interface abstract Lcom/htc/gson/ObjectNavigator$Visitor;
.super Ljava/lang/Object;
.source "ObjectNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/ObjectNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract end(Lcom/htc/gson/ObjectTypePair;)V
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract start(Lcom/htc/gson/ObjectTypePair;)V
.end method

.method public abstract startVisitingObject(Ljava/lang/Object;)V
.end method

.method public abstract visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.end method

.method public abstract visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
.end method

.method public abstract visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
.end method

.method public abstract visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
.end method

.method public abstract visitPrimitive(Ljava/lang/Object;)V
.end method

.method public abstract visitUsingCustomHandler(Lcom/htc/gson/ObjectTypePair;)Z
.end method
