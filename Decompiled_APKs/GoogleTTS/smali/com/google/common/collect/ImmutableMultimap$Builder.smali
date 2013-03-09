.class public Lcom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final builderMultimap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Builder;,"Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 144
    return-void
.end method
