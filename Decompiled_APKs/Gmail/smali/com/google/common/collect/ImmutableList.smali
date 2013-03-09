.class public abstract Lcom/google/common/collect/ImmutableList;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method private static checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "element"
    .parameter "index"

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-object p0
.end method

.method private static varargs construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 296
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v1, p0}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private static copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, elements:[Ljava/lang/Object;
    array-length v2, v0

    packed-switch v2, :pswitch_data_0

    .line 289
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    return-object v1

    .line 281
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 284
    :pswitch_1
    new-instance v1, Lcom/google/common/collect/SingletonImmutableList;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 285
    .local v1, list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    instance-of v1, p0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_1

    .line 244
    check-cast p0, Lcom/google/common/collect/ImmutableCollection;

    .end local p0           #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 245
    .local v0, list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 247
    .end local v0           #list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    .restart local p0       #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 268
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_1
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    .local p9, e10:Ljava/lang/Object;,"TE;"
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    const/16 v1, 0x9

    aput-object p9, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    .local p9, e10:Ljava/lang/Object;,"TE;"
    .local p10, e11:Ljava/lang/Object;,"TE;"
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    const/16 v1, 0x9

    aput-object p9, v0, v1

    const/16 v1, 0xa

    aput-object p10, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    .local p9, e10:Ljava/lang/Object;,"TE;"
    .local p10, e11:Ljava/lang/Object;,"TE;"
    .local p11, e12:Ljava/lang/Object;,"TE;"
    .local p12, others:[Ljava/lang/Object;,"[TE;"
    move-object/from16 v0, p12

    array-length v2, v0

    add-int/lit8 v2, v2, 0xc

    new-array v1, v2, [Ljava/lang/Object;

    .line 191
    .local v1, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 192
    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 193
    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 194
    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 195
    const/4 v2, 0x4

    aput-object p4, v1, v2

    .line 196
    const/4 v2, 0x5

    aput-object p5, v1, v2

    .line 197
    const/4 v2, 0x6

    aput-object p6, v1, v2

    .line 198
    const/4 v2, 0x7

    aput-object p7, v1, v2

    .line 199
    const/16 v2, 0x8

    aput-object p8, v1, v2

    .line 200
    const/16 v2, 0x9

    aput-object p9, v1, v2

    .line 201
    const/16 v2, 0xa

    aput-object p10, v1, v2

    .line 202
    const/16 v2, 0xb

    aput-object p11, v1, v2

    .line 203
    const/4 v2, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p12

    array-length v4, v0

    move-object/from16 v0, p12

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 523
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, newElements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 499
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->hashCodeImpl(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract subList(II)Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 527
    .local p0, this:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
