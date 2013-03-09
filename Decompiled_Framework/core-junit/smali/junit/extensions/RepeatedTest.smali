.class public Ljunit/extensions/RepeatedTest;
.super Ljunit/extensions/TestDecorator;
.source "RepeatedTest.java"


# instance fields
.field private fTimesRepeat:I


# direct methods
.method public constructor <init>(Ljunit/framework/Test;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repetition count must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 2

    invoke-super {p0}, Ljunit/extensions/TestDecorator;->countTestCases()I

    move-result v0

    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Ljunit/extensions/TestDecorator;->run(Ljunit/framework/TestResult;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljunit/extensions/TestDecorator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(repeated)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
