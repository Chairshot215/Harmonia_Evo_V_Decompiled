.class Lcom/futuredial/atparser/CRegexSpliter;
.super Ljava/lang/Object;
.source "CISpliter.java"

# interfaces
.implements Lcom/futuredial/atparser/CISpliter;


# instance fields
.field public m_strRegex:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/CRegexSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    .line 24
    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "data"
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
    .line 30
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/futuredial/atparser/CRegexSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/futuredial/atparser/CRegexSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 33
    :cond_0
    const/4 v4, 0x0

    .line 47
    :goto_0
    return v4

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, s:Ljava/lang/String;
    const-string v4, "+CMGL: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 38
    .local v2, index:I
    if-lez v2, :cond_2

    .line 40
    const-string v4, "+CMGL: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    :cond_2
    iget-object v4, p0, Lcom/futuredial/atparser/CRegexSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, dArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 45
    aget-object v4, v0, v1

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "para"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/futuredial/atparser/CRegexSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    .line 55
    return-void
.end method
