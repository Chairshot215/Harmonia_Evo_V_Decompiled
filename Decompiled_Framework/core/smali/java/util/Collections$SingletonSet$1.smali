.class Ljava/util/Collections$SingletonSet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$0:Ljava/util/Collections$SingletonSet;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonSet;)V
    .locals 1

    iput-object p1, p0, Ljava/util/Collections$SingletonSet$1;->this$0:Ljava/util/Collections$SingletonSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    iget-object v0, p0, Ljava/util/Collections$SingletonSet$1;->this$0:Ljava/util/Collections$SingletonSet;

    iget-object v0, v0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
