.class final Ljava/lang/reflect/Method$1;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method$1;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 7

    #getter for: Ljava/lang/reflect/Method;->name:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/reflect/Method;->access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    #getter for: Ljava/lang/reflect/Method;->name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/reflect/Method;->access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v5, v2

    :goto_0
    return v5

    :cond_0
    #getter for: Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;
    invoke-static {p1}, Ljava/lang/reflect/Method;->access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    #getter for: Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;
    invoke-static {p2}, Ljava/lang/reflect/Method;->access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v1

    array-length v5, v0

    array-length v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v5, v0

    array-length v6, v1

    if-eq v5, v6, :cond_3

    array-length v5, v0

    array-length v6, v1

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method
