.class final enum Ljava/util/TreeMap$Bound$3;
.super Ljava/util/TreeMap$Bound;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$Bound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/TreeMap$Bound;-><init>(Ljava/lang/String;ILjava/util/TreeMap$1;)V

    return-void
.end method


# virtual methods
.method public leftCap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method

.method public rightCap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method
