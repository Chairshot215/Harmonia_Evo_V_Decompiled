.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/ArrayList;)V

    .line 43
    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/ArrayList;)V
.end method
