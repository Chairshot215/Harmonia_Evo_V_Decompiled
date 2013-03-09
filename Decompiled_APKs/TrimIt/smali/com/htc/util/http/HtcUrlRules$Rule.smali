.class public Lcom/htc/util/http/HtcUrlRules$Rule;
.super Ljava/lang/Object;
.source "HtcUrlRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/http/HtcUrlRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/htc/util/http/HtcUrlRules$Rule;


# instance fields
.field public final mBlock:Z

.field public final mName:Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;

.field public final mRewrite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/htc/util/http/HtcUrlRules$Rule;

    invoke-direct {v0}, Lcom/htc/util/http/HtcUrlRules$Rule;-><init>()V

    sput-object v0, Lcom/htc/util/http/HtcUrlRules$Rule;->DEFAULT:Lcom/htc/util/http/HtcUrlRules$Rule;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mName:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mBlock:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "rule"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/http/HtcUrlRules$RuleFormatException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mName:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/htc/util/http/HtcUrlRules;->access$000()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, words:[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_0

    new-instance v5, Lcom/htc/util/http/HtcUrlRules$RuleFormatException;

    const-string v6, "Empty rule"

    invoke-direct {v5, v6}, Lcom/htc/util/http/HtcUrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, rewrite:Ljava/lang/String;
    const/4 v0, 0x0

    .line 87
    .local v0, block:Z
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 88
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, word:Ljava/lang/String;
    const-string v5, "rewrite"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 90
    add-int/lit8 v5, v1, 0x1

    aget-object v2, v4, v5

    .line 91
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 92
    :cond_1
    const-string v5, "block"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    const/4 v0, 0x1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    new-instance v5, Lcom/htc/util/http/HtcUrlRules$RuleFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/util/http/HtcUrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    .end local v3           #word:Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mBlock:Z

    .line 103
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mBlock:Z

    if-eqz v0, :cond_1

    .line 120
    const/4 p1, 0x0

    .line 124
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 121
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mRewrite:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mRewrite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 130
    check-cast p1, Lcom/htc/util/http/HtcUrlRules$Rule;

    .end local p1
    iget-object v0, p1, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
