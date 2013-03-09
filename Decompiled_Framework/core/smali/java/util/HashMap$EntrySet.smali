.class final Ljava/util/HashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Ljava/util/HashMap;->access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Ljava/util/HashMap;->access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method
