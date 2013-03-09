.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SuffixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

.field private final suffixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "suffix"

    .prologue
    .line 63
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "suffix"
    .parameter "caseSensitivity"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The suffix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 80
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "suffixes"

    .prologue
    .line 124
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "suffixes"
    .parameter "caseSensitivity"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of suffixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 142
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 143
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "suffixes"

    .prologue
    .line 93
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "suffixes"
    .parameter "caseSensitivity"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of suffixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 113
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 114
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 158
    :goto_1
    return v2

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 174
    :goto_1
    return v1

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 187
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 188
    if-lez v1, :cond_0

    .line 189
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
