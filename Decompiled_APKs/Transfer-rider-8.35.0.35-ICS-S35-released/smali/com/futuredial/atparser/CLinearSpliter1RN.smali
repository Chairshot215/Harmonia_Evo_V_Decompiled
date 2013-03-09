.class Lcom/futuredial/atparser/CLinearSpliter1RN;
.super Lcom/futuredial/atparser/CLinearSpliter1;
.source "CISpliter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/futuredial/atparser/CLinearSpliter1;-><init>()V

    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "atdata"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/futuredial/atparser/CLinearSpliter2RN;

    invoke-direct {v0}, Lcom/futuredial/atparser/CLinearSpliter2RN;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/futuredial/atparser/CLinearSpliter2RN;->do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
