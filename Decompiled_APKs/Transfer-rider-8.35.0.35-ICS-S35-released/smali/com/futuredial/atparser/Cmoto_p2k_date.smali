.class Lcom/futuredial/atparser/Cmoto_p2k_date;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "val"

    .prologue
    const/16 v5, 0xa

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 50
    const-string v3, ""

    .line 55
    :goto_0
    return-object v3

    .line 51
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, month:Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, day:Ljava/lang/String;
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, year:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 55
    goto :goto_0
.end method
