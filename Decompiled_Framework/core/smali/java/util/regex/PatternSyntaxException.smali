.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private desc:Ljava/lang/String;

.field private index:I

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    const/16 v3, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "near index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v2, :cond_3

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    new-array v1, v2, [C

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([CC)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    return-object v0
.end method
