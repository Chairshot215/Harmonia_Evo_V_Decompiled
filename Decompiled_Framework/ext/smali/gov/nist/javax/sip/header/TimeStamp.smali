.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "TimeStamp.java"

# interfaces
.implements Ljavax/sip/header/TimeStampHeader;


# static fields
.field private static final serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected delay:I

.field protected delayFloat:F

.field protected timeStamp:J

.field private timeStampFloat:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/high16 v2, -0x4080

    const-string v0, "Timestamp"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method private getDelayAsString()Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeStampAsString()Ljava/lang/String;
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getDelay()F
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    goto :goto_0
.end method

.method public getTime()J
    .locals 4

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    float-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    goto :goto_0
.end method

.method public getTimeDelay()I
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    goto :goto_0
.end method

.method public getTimeStamp()F
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    goto :goto_0
.end method

.method public hasDelay()Z
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDelay()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method public setDelay(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method public setTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Illegal timestamp"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const/high16 v0, -0x4080

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void
.end method

.method public setTimeDelay(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/high16 v0, -0x4080

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    return-void
.end method

.method public setTimeStamp(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void
.end method
