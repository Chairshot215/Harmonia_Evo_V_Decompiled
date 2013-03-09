.class final Lcom/htc/gson/Pair;
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
    .line 25
    .local p0, this:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<TFIRST;TSECOND;>;"
    .local p1, first:Ljava/lang/Object;,"TFIRST;"
    .local p2, second:Ljava/lang/Object;,"TSECOND;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/htc/gson/Pair;->first:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lcom/htc/gson/Pair;->second:Ljava/lang/Object;

    .line 28
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
    .line 31
    .local p0, this:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<TFIRST;TSECOND;>;"
    iget-object v0, p0, Lcom/htc/gson/Pair;->first:Ljava/lang/Object;

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
    .line 35
    .local p0, this:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<TFIRST;TSECOND;>;"
    iget-object v0, p0, Lcom/htc/gson/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method
