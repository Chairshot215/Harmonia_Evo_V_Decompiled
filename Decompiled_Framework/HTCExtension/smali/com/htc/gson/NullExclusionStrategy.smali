.class final Lcom/htc/gson/NullExclusionStrategy;
.super Ljava/lang/Object;
.source "NullExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    return v0
.end method
