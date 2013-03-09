.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "NameFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

.field private final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "name"
    .parameter "caseSensitivity"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    .line 76
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "names"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "names"
    .parameter "caseSensitivity"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of names must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    .line 134
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 135
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "names"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;-><init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "names"
    .parameter "caseSensitivity"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of names must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    .line 107
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 108
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x1

    .line 151
    :goto_1
    return v2

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 167
    :goto_1
    return v1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 181
    if-lez v1, :cond_0

    .line 182
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
