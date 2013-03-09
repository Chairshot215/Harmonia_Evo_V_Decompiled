.class Lcom/futuredial/atparser/Cse_pdu_sms_info;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 61
    :goto_0
    return v3

    .line 49
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, rawVal:I
    const-string v2, "0"

    .line 51
    .local v2, smsState:Ljava/lang/String;
    const-string v1, "2"

    .line 52
    .local v1, smsBoxType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 53
    const-string v2, "1"

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_4

    .line 56
    :cond_2
    const-string v1, "1"

    .line 59
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/futuredial/atparser/Cse_pdu_sms_info;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v2}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, p0, Lcom/futuredial/atparser/Cse_pdu_sms_info;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 61
    goto :goto_0

    .line 57
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 58
    const-string v1, "3"

    goto :goto_1
.end method
