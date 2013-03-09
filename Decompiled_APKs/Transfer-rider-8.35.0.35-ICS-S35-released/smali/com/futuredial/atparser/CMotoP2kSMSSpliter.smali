.class Lcom/futuredial/atparser/CMotoP2kSMSSpliter;
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/CMotoP2kSMSSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    .line 61
    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 8
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
    .line 67
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/futuredial/atparser/CMotoP2kSMSSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/futuredial/atparser/CMotoP2kSMSSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 70
    :cond_0
    const/4 v6, 0x0

    .line 93
    :goto_0
    return v6

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, s:Ljava/lang/String;
    const-string v6, "+CMGR: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, index:I
    if-lez v2, :cond_2

    .line 77
    const-string v6, "+CMGR: "

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_2
    const-string v6, "\\d{4}/\\d{1,2}/\\d{1,2},(\\d{1,2}:){2}\\d{1,2}\"\r\n"

    const/16 v7, 0x20

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 81
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 82
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_3

    .line 84
    const-string v6, "\r\n"

    const-string v7, ",\"\"\r\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 88
    :cond_3
    iget-object v6, p0, Lcom/futuredial/atparser/CMotoP2kSMSSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, dArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_4

    .line 91
    aget-object v6, v0, v1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "para"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/futuredial/atparser/CMotoP2kSMSSpliter;->m_strRegex:Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method
