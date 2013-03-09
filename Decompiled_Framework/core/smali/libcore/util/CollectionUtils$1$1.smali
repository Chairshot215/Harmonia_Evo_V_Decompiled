.class Llibcore/util/CollectionUtils$1$1;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/util/CollectionUtils$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private removeIsOkay:Z

.field final synthetic this$0:Llibcore/util/CollectionUtils$1;


# direct methods
.method constructor <init>(Llibcore/util/CollectionUtils$1;)V
    .locals 1

    iput-object p1, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    iget-object v0, v0, Llibcore/util/CollectionUtils$1;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    return-void
.end method

.method private computeNext()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    iget-boolean v0, v0, Llibcore/util/CollectionUtils$1;->val$trim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Llibcore/util/CollectionUtils$1$1;->computeNext()V

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/util/CollectionUtils$1$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
