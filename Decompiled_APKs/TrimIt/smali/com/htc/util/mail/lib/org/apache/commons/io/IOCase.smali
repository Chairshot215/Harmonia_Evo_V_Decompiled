.class public final Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;
.super Ljava/lang/Object;
.source "IOCase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase; = null

.field public static final SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase; = null

.field public static final SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase; = null

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    const-string v3, "Sensitive"

    invoke-direct {v2, v3, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 48
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    const-string v3, "Insensitive"

    invoke-direct {v2, v3, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->INSENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 57
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    const-string v3, "System"

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "sensitive"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    .line 98
    iput-boolean p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    .line 99
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;
    .locals 3
    .parameter "name"

    .prologue
    .line 77
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->INSENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->INSENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IOCase name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->forName(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 195
    .local v5, endLen:I
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "strStartIndex"
    .parameter "search"

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "start"

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method convertCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 223
    const/4 p1, 0x0

    .line 225
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->sensitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
