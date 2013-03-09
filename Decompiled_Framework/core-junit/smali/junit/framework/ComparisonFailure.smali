.class public Ljunit/framework/ComparisonFailure;
.super Ljunit/framework/AssertionFailedError;
.source "ComparisonFailure.java"


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iput-object p3, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 9

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    invoke-super {p0}, Ljunit/framework/AssertionFailedError;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v8, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5

    :cond_2
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    if-lt v4, v3, :cond_3

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_3
    if-ge v4, v3, :cond_7

    if-ge v5, v3, :cond_7

    iget-object v2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v0, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    :cond_4
    :goto_3
    invoke-super {p0}, Ljunit/framework/AssertionFailedError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v0}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-gt v3, v1, :cond_8

    if-lez v3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method
