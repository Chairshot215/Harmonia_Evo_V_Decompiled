.class Lcom/htc/gson/SyntheticFieldExclusionStrategy;
.super Ljava/lang/Object;
.source "SyntheticFieldExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# instance fields
.field private final skipSyntheticFields:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "skipSyntheticFields"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/htc/gson/SyntheticFieldExclusionStrategy;->skipSyntheticFields:Z

    .line 36
    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/gson/SyntheticFieldExclusionStrategy;->skipSyntheticFields:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/gson/FieldAttributes;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
