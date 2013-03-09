.class final Lcom/google/gson/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FIRST:",
        "Ljava/lang/Object;",
        "SECOND:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFIRST;"
        }
    .end annotation
.end field

.field private final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSECOND;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFIRST;TSECOND;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/google/gson/Pair;,"Lcom/google/gson/Pair<TFIRST;TSECOND;>;"
    .local p1, first:Ljava/lang/Object;,"TFIRST;"
    .local p2, second:Ljava/lang/Object;,"TSECOND;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/gson/Pair;->first:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/google/gson/Pair;->second:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFIRST;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/google/gson/Pair;,"Lcom/google/gson/Pair<TFIRST;TSECOND;>;"
    iget-object v0, p0, Lcom/google/gson/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSECOND;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/google/gson/Pair;,"Lcom/google/gson/Pair<TFIRST;TSECOND;>;"
    iget-object v0, p0, Lcom/google/gson/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method
