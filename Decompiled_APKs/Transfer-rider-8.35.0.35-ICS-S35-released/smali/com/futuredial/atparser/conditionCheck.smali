.class public Lcom/futuredial/atparser/conditionCheck;
.super Ljava/lang/Object;
.source "conditionCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter "checkType"
    .parameter
    .parameter "iEntryIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, slices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 12
    const-string v1, "moto_p2k_bored_repeat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    if-nez p2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 26
    const/4 v0, 0x1

    goto :goto_0
.end method
