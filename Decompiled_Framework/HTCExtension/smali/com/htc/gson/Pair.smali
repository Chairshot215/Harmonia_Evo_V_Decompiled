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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFIRST;TSECOND;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/Pair;->first:Ljava/lang/Object;

    iput-object p2, p0, Lcom/htc/gson/Pair;->second:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/htc/gson/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method
