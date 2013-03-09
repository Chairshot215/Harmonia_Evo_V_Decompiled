.class final Ljava/util/HashMap$Values;
.super Ljava/util/AbstractCollection;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

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
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->newValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method
