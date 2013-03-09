.class final Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;
.super Ljava/lang/Object;
.source "AnonymousAndLocalClassExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
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
    .line 38
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 34
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/htc/gson/FieldAttributes;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
