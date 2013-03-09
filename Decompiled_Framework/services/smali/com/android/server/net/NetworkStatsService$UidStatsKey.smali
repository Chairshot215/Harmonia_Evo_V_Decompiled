.class Lcom/android/server/net/NetworkStatsService$UidStatsKey;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidStatsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsService$UidStatsKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iput p2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iput p3, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iput p4, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsService$UidStatsKey;)I
    .locals 2

    iget v0, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iget v1, p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->compareTo(Lcom/android/server/net/NetworkStatsService$UidStatsKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
