.class Lcom/htc/textselection/FetchSuggestionFromIME$1;
.super Ljava/util/LinkedHashMap;
.source "FetchSuggestionFromIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference",
        "<[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method constructor <init>(Lcom/htc/textselection/FetchSuggestionFromIME;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/textselection/FetchSuggestionFromIME$1;->this$0:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/textselection/FetchSuggestionFromIME$1;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
