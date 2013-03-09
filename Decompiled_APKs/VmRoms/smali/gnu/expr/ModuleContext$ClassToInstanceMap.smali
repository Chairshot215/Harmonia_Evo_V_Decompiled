.class Lgnu/expr/ModuleContext$ClassToInstanceMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ModuleContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToInstanceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .parameter "instance"

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 125
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
