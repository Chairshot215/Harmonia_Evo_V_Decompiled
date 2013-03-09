.class public abstract Lcom/google/common/collect/Sets$SetView;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/collect/Sets$SetView;,"Lcom/google/common/collect/Sets$SetView<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Sets$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 502
    .local p0, this:Lcom/google/common/collect/Sets$SetView;,"Lcom/google/common/collect/Sets$SetView<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$SetView;-><init>()V

    return-void
.end method
