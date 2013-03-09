.class final Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final UNSET_CONCURRENCY_LEVEL:I = -0x1

.field private static final UNSET_INITIAL_CAPACITY:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 146
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public buildComputingMap(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy<TK;TV;TE;>;"
    .local p2, computer:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    if-nez p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-nez p2, :cond_1

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public buildMap(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    .locals 3
    .parameter "concurrencyLevel"

    .prologue
    .line 185
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "concurrency level was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    if-gtz p1, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 192
    :cond_1
    iput p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    .line 193
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    goto :goto_0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .line 157
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial capacity was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-gez p1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_1
    iput p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 165
    return-object p0
.end method
