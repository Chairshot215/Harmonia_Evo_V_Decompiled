.class public Lcom/google/android/common/http/UrlRules$Rule;
.super Ljava/lang/Object;
.source "UrlRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/UrlRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;


# instance fields
.field public final mBlock:Z

.field public final mName:Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;

.field public final mRewrite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0}, Lcom/google/android/common/http/UrlRules$Rule;-><init>()V

    sput-object v0, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "rule"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/common/http/UrlRules$RuleFormatException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/google/android/common/http/UrlRules;->access$000()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, words:[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_0

    new-instance v5, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    const-string v6, "Empty rule"

    invoke-direct {v5, v6}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, rewrite:Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, block:Z
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 90
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, word:Ljava/lang/String;
    const-string v5, "rewrite"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 92
    add-int/lit8 v5, v1, 0x1

    aget-object v2, v4, v5

    .line 93
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 94
    :cond_1
    const-string v5, "block"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    const/4 v0, 0x1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    new-instance v5, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    .end local v3           #word:Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    .line 105
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    if-eqz v0, :cond_1

    .line 122
    const/4 p1, 0x0

    .line 126
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 123
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

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
    .line 132
    check-cast p1, Lcom/google/android/common/http/UrlRules$Rule;

    .end local p1
    iget-object v0, p1, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
