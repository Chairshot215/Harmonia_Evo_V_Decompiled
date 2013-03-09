.class final Lcom/htc/android/htcime/tools/HTC_IME_Test$1;
.super Ljava/lang/Object;
.source "HTC_IME_Test.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/HTC_IME_Test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/HTC_IME_Test$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    check-cast p1, Ljava/util/Map;

    .end local p1
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/tools/HTC_IME_Test$1;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
    .parameter "map1"
    .parameter "map2"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/android/htcime/tools/HTC_IME_Test$1;->collator:Ljava/text/Collator;

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
