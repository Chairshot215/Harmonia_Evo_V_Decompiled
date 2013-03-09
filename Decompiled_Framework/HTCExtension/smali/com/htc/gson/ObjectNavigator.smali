.class final Lcom/htc/gson/ObjectNavigator;
.super Ljava/lang/Object;
.source "ObjectNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/ObjectNavigator$Visitor;
    }
.end annotation


# instance fields
.field private final exclusionStrategy:Lcom/htc/gson/ExclusionStrategy;

.field private final objTypePair:Lcom/htc/gson/ObjectTypePair;


# direct methods
.method constructor <init>(Lcom/htc/gson/ObjectTypePair;Lcom/htc/gson/ExclusionStrategy;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    iput-object p2, p0, Lcom/htc/gson/ObjectNavigator;->exclusionStrategy:Lcom/htc/gson/ExclusionStrategy;

    return-void
.end method

.method private isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/htc/gson/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private navigateClassFields(Ljava/lang/Object;Ljava/lang/Class;Lcom/htc/gson/ObjectNavigator$Visitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/gson/ObjectNavigator$Visitor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v5, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v0, v6

    new-instance v3, Lcom/htc/gson/FieldAttributes;

    invoke-direct {v3, v2}, Lcom/htc/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    iget-object v9, p0, Lcom/htc/gson/ObjectNavigator;->exclusionStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-interface {v9, v3}, Lcom/htc/gson/ExclusionStrategy;->shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/htc/gson/ObjectNavigator;->exclusionStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-virtual {v3}, Lcom/htc/gson/FieldAttributes;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/htc/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v9}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/htc/gson/TypeInfoFactory;->getTypeInfoForField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Lcom/htc/gson/TypeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/gson/TypeInfo;->getActualType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p3, v2, v1, p1}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Lcom/htc/gson/TypeInfo;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p3, v2, v1, p1}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p3, v2, v1, p1}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V
    .locals 9

    new-instance v3, Lcom/htc/gson/TypeInfo;

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->exclusionStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-virtual {v3}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/htc/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitUsingCustomHandler(Lcom/htc/gson/ObjectTypePair;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/htc/gson/ObjectNavigator$Visitor;->getTarget()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v7, v4}, Lcom/htc/gson/ObjectTypePair;->setObject(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/htc/gson/ObjectNavigator$Visitor;->start(Lcom/htc/gson/ObjectTypePair;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/htc/gson/TypeInfo;->isArray()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/htc/gson/ObjectNavigator$Visitor;->end(Lcom/htc/gson/ObjectTypePair;)V

    goto :goto_0

    :cond_3
    move-object v4, v2

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/htc/gson/TypeInfo;->getActualType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    if-ne v7, v8, :cond_5

    invoke-direct {p0, v4}, Lcom/htc/gson/ObjectNavigator;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1, v4}, Lcom/htc/gson/ObjectNavigator$Visitor;->visitPrimitive(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/htc/gson/ObjectNavigator$Visitor;->getTarget()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-interface {p1, v4}, Lcom/htc/gson/ObjectNavigator$Visitor;->startVisitingObject(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/htc/gson/ObjectTypePair;->toMoreSpecificType()Lcom/htc/gson/ObjectTypePair;

    move-result-object v1

    new-instance v7, Lcom/htc/gson/TypeInfo;

    invoke-virtual {v1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v7}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_2

    const-class v7, Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v4, v0, p1}, Lcom/htc/gson/ObjectNavigator;->navigateClassFields(Ljava/lang/Object;Ljava/lang/Class;Lcom/htc/gson/ObjectNavigator$Visitor;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/gson/ObjectNavigator;->objTypePair:Lcom/htc/gson/ObjectTypePair;

    invoke-interface {p1, v8}, Lcom/htc/gson/ObjectNavigator$Visitor;->end(Lcom/htc/gson/ObjectTypePair;)V

    throw v7
.end method
