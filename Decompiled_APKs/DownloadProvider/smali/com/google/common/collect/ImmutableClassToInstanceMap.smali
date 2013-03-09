.class public final Lcom/google/common/collect/ImmutableClassToInstanceMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ImmutableClassToInstanceMap.java"

# interfaces
.implements Lcom/google/common/collect/ClassToInstanceMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableClassToInstanceMap$1;,
        Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;",
        "Lcom/google/common/collect/ClassToInstanceMap",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, delegate:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableClassToInstanceMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableClassToInstanceMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "S:TB;>(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Class",
            "<+TS;>;+TS;>;)",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Class<+TS;>;+TS;>;"
    instance-of v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;

    if-eqz v0, :cond_0

    .line 115
    check-cast p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;

    .line 117
    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Class<+TS;>;+TS;>;"
    :goto_0
    return-object p0

    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Class<+TS;>;+TS;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->build()Lcom/google/common/collect/ImmutableClassToInstanceMap;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/ImmutableClassToInstanceMap;,"Lcom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
