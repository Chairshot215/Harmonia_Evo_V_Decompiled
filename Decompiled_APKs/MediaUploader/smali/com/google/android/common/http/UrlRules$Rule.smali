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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/common/http/UrlRules$RuleFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/google/android/common/http/UrlRules;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    array-length v1, v0

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    const-string v1, "Empty rule"

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    move-object v3, v1

    move v1, v7

    .line 89
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 90
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "rewrite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 92
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    .line 93
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 94
    :cond_1
    const-string v2, "block"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    add-int/lit8 v1, v1, 0x1

    move v2, v7

    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    iput-object v3, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 104
    iput-boolean v2, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    .line 105
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    if-eqz v0, :cond_1

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

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 126
    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 132
    check-cast p1, Lcom/google/android/common/http/UrlRules$Rule;

    iget-object v0, p1, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
