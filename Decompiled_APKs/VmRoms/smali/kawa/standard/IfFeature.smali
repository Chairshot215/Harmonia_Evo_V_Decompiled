.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "IfFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 8
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 22
    const-string v4, "kawa"

    if-ne p0, v4, :cond_0

    move v4, v6

    .line 85
    :goto_0
    return v4

    .line 24
    :cond_0
    const-string v4, "srfi-0"

    if-ne p0, v4, :cond_1

    move v4, v6

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const-string v4, "srfi-4"

    if-ne p0, v4, :cond_2

    move v4, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string v4, "srfi-6"

    if-ne p0, v4, :cond_3

    move v4, v6

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-string v4, "srfi-8"

    if-ne p0, v4, :cond_4

    move v4, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_4
    const-string v4, "srfi-9"

    if-ne p0, v4, :cond_5

    move v4, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_5
    const-string v4, "srfi-11"

    if-ne p0, v4, :cond_6

    move v4, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_6
    const-string v4, "srfi-16"

    if-ne p0, v4, :cond_7

    move v4, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_7
    const-string v4, "srfi-17"

    if-ne p0, v4, :cond_8

    move v4, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_8
    const-string v4, "srfi-23"

    if-ne p0, v4, :cond_9

    move v4, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_9
    const-string v4, "srfi-25"

    if-ne p0, v4, :cond_a

    move v4, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_a
    const-string v4, "srfi-26"

    if-ne p0, v4, :cond_b

    move v4, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_b
    const-string v4, "srfi-28"

    if-ne p0, v4, :cond_c

    move v4, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_c
    const-string v4, "srfi-30"

    if-ne p0, v4, :cond_d

    move v4, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_d
    const-string v4, "srfi-39"

    if-ne p0, v4, :cond_e

    move v4, v6

    .line 52
    goto :goto_0

    .line 71
    :cond_e
    const-string v4, "in-http-server"

    if-eq p0, v4, :cond_f

    const-string v4, "in-servlet"

    if-ne p0, v4, :cond_13

    .line 73
    :cond_f
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ModuleContext;->getFlags()I

    move-result v2

    .line 74
    .local v2, mflags:I
    const-string v4, "in-http-server"

    if-ne p0, v4, :cond_11

    .line 75
    sget v4, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_10

    move v4, v6

    goto :goto_0

    :cond_10
    move v4, v7

    goto :goto_0

    .line 76
    :cond_11
    const-string v4, "in-servlet"

    if-ne p0, v4, :cond_13

    .line 77
    sget v4, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_12

    move v4, v6

    goto :goto_0

    :cond_12
    move v4, v7

    goto :goto_0

    .line 80
    .end local v2           #mflags:I
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%provide%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, provide_name:Ljava/lang/String;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    .line 82
    .local v0, comp:Lgnu/expr/Compilation;
    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    .line 83
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_14

    const-wide/32 v4, 0x10000

    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-nez v4, :cond_14

    move v4, v6

    .line 84
    goto/16 :goto_0

    :cond_14
    move v4, v7

    .line 85
    goto/16 :goto_0
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .locals 3
    .parameter "form"

    .prologue
    .line 10
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 12
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v1, v0

    .line 13
    .local v1, sf:Lkawa/lang/SyntaxForm;
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .line 15
    .end local v1           #sf:Lkawa/lang/SyntaxForm;
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    .line 17
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
