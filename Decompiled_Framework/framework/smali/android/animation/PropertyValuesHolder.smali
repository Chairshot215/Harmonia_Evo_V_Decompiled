.class public Landroid/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$1;,
        Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Landroid/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Landroid/animation/KeyframeSet;

.field protected mProperty:Landroid/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/util/Property;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;IF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;IF)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 13

    const/4 v6, 0x0

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v10}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    move-object v7, v6

    :goto_1
    return-object v7

    :catch_0
    move-exception v2

    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find no-arg method for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v9, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    :goto_2
    move-object v1, v9

    array-length v4, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v8, v1, v3

    const/4 v10, 0x0

    aput-object v8, v0, v10

    :try_start_1
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v8, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v9, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Double;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v9, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v11, v9, v10

    goto :goto_2

    :catch_1
    move-exception v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find setter/getter for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with value type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static native nCallFloatMethod(Ljava/lang/Object;IF)V
.end method

.method private static native nCallIntMethod(Ljava/lang/Object;II)V
.end method

.method private static native nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I
.end method

.method private static native nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 3

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    instance-of v2, v0, Landroid/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/IntKeyframeSet;)V

    :goto_0
    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/FloatKeyframeSet;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    iput-object v0, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 3

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    instance-of v2, v0, Landroid/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/IntKeyframeSet;)V

    :goto_0
    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/FloatKeyframeSet;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    :cond_0
    if-nez v2, :cond_2

    invoke-direct {p0, p1, p3, p4}, Landroid/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method private setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V
    .locals 4

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    :cond_1
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v2}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    :cond_0
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/KeyframeSet;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 1

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/KeyframeSet;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofFloat([F)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofInt([I)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    return-void
.end method

.method public varargs setKeyframes([Landroid/animation/Keyframe;)V
    .locals 4

    array-length v2, p1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, v0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v1, v1, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "set"

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 8

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v5, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v5, v5, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v5, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PropertyValuesHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such property ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on target object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Trying reflection instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    invoke-virtual {p0, v3}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    :cond_2
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v5, v5, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    invoke-direct {p0, v3}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, v0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v1}, Landroid/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
