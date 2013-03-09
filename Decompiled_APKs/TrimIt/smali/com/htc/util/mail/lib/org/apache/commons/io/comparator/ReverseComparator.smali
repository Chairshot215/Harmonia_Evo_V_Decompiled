.class Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;
.super Ljava/lang/Object;
.source "ReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final delegate:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Delegate comparator is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;->delegate:Ljava/util/Comparator;

    .line 43
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;->delegate:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
