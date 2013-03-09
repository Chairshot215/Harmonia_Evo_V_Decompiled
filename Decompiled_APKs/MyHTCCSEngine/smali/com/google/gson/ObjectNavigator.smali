.class final Lcom/google/gson/ObjectNavigator;
.super Ljava/lang/Object;
.source "ObjectNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/ObjectNavigator$Visitor;
    }
.end annotation


# instance fields
.field private final exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final objTypePair:Lcom/google/gson/ObjectTypePair;


# direct methods
.method constructor <init>(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ExclusionStrategy;)V
    .locals 0
    .parameter "objTypePair"
    .parameter "exclusionStrategy"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p2}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    .line 86
    iput-object p2, p0, Lcom/google/gson/ObjectNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 87
    return-void
.end method

.method private isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objectToVisit"

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, realClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/google/gson/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

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

.method private navigateClassFields(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/ObjectNavigator$Visitor;)V
    .locals 11
    .parameter "obj"
    .parameter
    .parameter "visitor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/ObjectNavigator$Visitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 141
    .local v5, fields:[Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-static {v5, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 142
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v0, v6

    .line 143
    .local v2, f:Ljava/lang/reflect/Field;
    new-instance v3, Lcom/google/gson/FieldAttributes;

    invoke-direct {v3, v2}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 144
    .local v3, fieldAttributes:Lcom/google/gson/FieldAttributes;
    iget-object v9, p0, Lcom/google/gson/ObjectNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v9, v3}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/google/gson/ObjectNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-virtual {v3}, Lcom/google/gson/FieldAttributes;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v9, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v9}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/gson/TypeInfoFactory;->getTypeInfoForField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfo;

    move-result-object v4

    .line 149
    .local v4, fieldTypeInfo:Lcom/google/gson/TypeInfo;
    invoke-virtual {v4}, Lcom/google/gson/TypeInfo;->getActualType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 150
    .local v1, declaredTypeOfField:Ljava/lang/reflect/Type;
    invoke-interface {p3, v2, v1, p1}, Lcom/google/gson/ObjectNavigator$Visitor;->visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v8

    .line 152
    .local v8, visitedWithCustomHandler:Z
    if-nez v8, :cond_0

    .line 153
    invoke-virtual {v4}, Lcom/google/gson/TypeInfo;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 154
    invoke-interface {p3, v2, v1, p1}, Lcom/google/gson/ObjectNavigator$Visitor;->visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-interface {p3, v2, v1, p1}, Lcom/google/gson/ObjectNavigator$Visitor;->visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    .end local v1           #declaredTypeOfField:Ljava/lang/reflect/Type;
    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v3           #fieldAttributes:Lcom/google/gson/FieldAttributes;
    .end local v4           #fieldTypeInfo:Lcom/google/gson/TypeInfo;
    .end local v8           #visitedWithCustomHandler:Z
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/gson/ObjectNavigator$Visitor;)V
    .locals 9
    .parameter "visitor"

    .prologue
    .line 94
    new-instance v3, Lcom/google/gson/TypeInfo;

    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 95
    .local v3, objTypeInfo:Lcom/google/gson/TypeInfo;
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-virtual {v3}, Lcom/google/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/google/gson/ObjectNavigator$Visitor;->visitUsingCustomHandler(Lcom/google/gson/ObjectTypePair;)Z

    move-result v6

    .line 99
    .local v6, visitedWithCustomHandler:Z
    if-nez v6, :cond_0

    .line 100
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 101
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/google/gson/ObjectNavigator$Visitor;->getTarget()Ljava/lang/Object;

    move-result-object v4

    .line 102
    .local v4, objectToVisit:Ljava/lang/Object;
    :goto_1
    if-eqz v4, :cond_0

    .line 105
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v7, v4}, Lcom/google/gson/ObjectTypePair;->setObject(Ljava/lang/Object;)V

    .line 106
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/google/gson/ObjectNavigator$Visitor;->start(Lcom/google/gson/ObjectTypePair;)V

    .line 108
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gson/TypeInfo;->isArray()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 109
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Lcom/google/gson/ObjectNavigator$Visitor;->visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-interface {p1, v7}, Lcom/google/gson/ObjectNavigator$Visitor;->end(Lcom/google/gson/ObjectTypePair;)V

    goto :goto_0

    .end local v4           #objectToVisit:Ljava/lang/Object;
    :cond_3
    move-object v4, v2

    .line 101
    goto :goto_1

    .line 110
    .restart local v4       #objectToVisit:Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/google/gson/TypeInfo;->getActualType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    if-ne v7, v8, :cond_5

    invoke-direct {p0, v4}, Lcom/google/gson/ObjectNavigator;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 114
    invoke-interface {p1, v4}, Lcom/google/gson/ObjectNavigator$Visitor;->visitPrimitive(Ljava/lang/Object;)V

    .line 115
    invoke-interface {p1}, Lcom/google/gson/ObjectNavigator$Visitor;->getTarget()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 117
    :cond_5
    invoke-interface {p1, v4}, Lcom/google/gson/ObjectNavigator$Visitor;->startVisitingObject(Ljava/lang/Object;)V

    .line 118
    iget-object v7, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-virtual {v7}, Lcom/google/gson/ObjectTypePair;->toMoreSpecificType()Lcom/google/gson/ObjectTypePair;

    move-result-object v1

    .line 119
    .local v1, currObjTypePair:Lcom/google/gson/ObjectTypePair;
    new-instance v7, Lcom/google/gson/TypeInfo;

    invoke-virtual {v1}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v7}, Lcom/google/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 120
    .local v5, topLevelClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, curr:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v0, :cond_2

    const-class v7, Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_6

    .line 123
    invoke-direct {p0, v4, v0, p1}, Lcom/google/gson/ObjectNavigator;->navigateClassFields(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 121
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 128
    .end local v0           #curr:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #currObjTypePair:Lcom/google/gson/ObjectTypePair;
    .end local v5           #topLevelClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/gson/ObjectNavigator;->objTypePair:Lcom/google/gson/ObjectTypePair;

    invoke-interface {p1, v8}, Lcom/google/gson/ObjectNavigator$Visitor;->end(Lcom/google/gson/ObjectTypePair;)V

    throw v7
.end method
