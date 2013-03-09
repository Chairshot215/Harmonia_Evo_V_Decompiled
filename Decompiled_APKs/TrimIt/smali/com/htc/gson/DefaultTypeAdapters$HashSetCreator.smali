.class Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/InstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashSetCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Ljava/util/HashSet",
        "<*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/HashSet;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/HashSet",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 812
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    const-class v0, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
