.class final Lcom/google/common/collect/Multisets$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Object;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/common/collect/Multisets$1;->val$e:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$1;->val$n:I

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/common/collect/Multisets$1;->val$n:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1;->val$e:Ljava/lang/Object;

    return-object v0
.end method
