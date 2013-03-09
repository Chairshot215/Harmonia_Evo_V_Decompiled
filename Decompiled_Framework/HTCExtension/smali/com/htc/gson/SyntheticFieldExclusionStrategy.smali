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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/htc/gson/SyntheticFieldExclusionStrategy;->skipSyntheticFields:Z

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 1

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
