.class Lcom/futuredial/atparser/CRegexBase64Spliter;
.super Lcom/futuredial/atparser/CRegexSpliter;
.source "CISpliter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/futuredial/atparser/CRegexSpliter;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    .line 123
    new-instance v0, Lcom/futuredial/atparser/CLinearSpliter1;

    invoke-direct {v0}, Lcom/futuredial/atparser/CLinearSpliter1;-><init>()V

    .line 124
    .local v0, cs:Lcom/futuredial/atparser/CLinearSpliter1;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v7, "2,4,6"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, "aaa,bbb,\"5,c,c\"c\",\"ddd\",\"5,c,r,t\",\"tt\",\"2,21\""

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, s:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v4}, Lcom/futuredial/atparser/CLinearSpliter1;->set_para(Ljava/lang/StringBuffer;)V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v2, v3}, Lcom/futuredial/atparser/CLinearSpliter1;->do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z

    .line 130
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v5, ss:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v6, ss_d:Ljava/lang/StringBuffer;
    const-string v7, "aaa,5\r\nb,\"bb,ccc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v1, Lcom/futuredial/atparser/CLinearSpliter2RN;

    invoke-direct {v1}, Lcom/futuredial/atparser/CLinearSpliter2RN;-><init>()V

    .line 137
    .local v1, csp:Lcom/futuredial/atparser/CLinearSpliter2RN;
    const-string v7, "1,3,4"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/futuredial/atparser/CLinearSpliter2RN;->set_para(Ljava/lang/StringBuffer;)V

    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual {v1, v6, v3}, Lcom/futuredial/atparser/CLinearSpliter2RN;->do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z

    .line 140
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "para"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 118
    .local v0, buf:[B
    iget-object v1, p0, Lcom/futuredial/atparser/CRegexBase64Spliter;->m_strRegex:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
