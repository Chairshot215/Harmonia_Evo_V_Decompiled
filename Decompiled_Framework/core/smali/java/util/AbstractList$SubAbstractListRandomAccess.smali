.class final Ljava/util/AbstractList$SubAbstractListRandomAccess;
.super Ljava/util/AbstractList$SubAbstractList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListRandomAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList$SubAbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    return-void
.end method
