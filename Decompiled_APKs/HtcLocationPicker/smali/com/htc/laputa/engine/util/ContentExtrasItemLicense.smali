.class public Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;
.super Ljava/lang/Object;
.source "ContentExtrasItemLicense.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mExpireDate:Ljava/lang/String;

.field private mIsTrial:Z

.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "ContentExtrasItemLicense"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->TAG:Ljava/lang/String;

    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->TAG:Ljava/lang/String;

    const-string v1, "ContentExtrasItemLicense with null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mName:Ljava/lang/String;

    .line 32
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mType:I

    .line 33
    const-string v0, "istrial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mIsTrial:Z

    .line 34
    const-string v0, "expiredate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mExpireDate:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    .line 36
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentExtrasItemLicense :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expire:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isperpetual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->isPerpetual()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",graceexpire:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getGracePeriodExpireDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mExpireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDay()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expireday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireHour()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expirehour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireMinute()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expireminute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireMonth()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expiremonth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireSecond()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expiresecond"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireYear()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "expireyear"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriod()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpiredate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGracePeriodExpireDay()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpireday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireHour()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpirehour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireMin()I
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpiremin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireMonth()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpiremonth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireSec()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpiresec"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGracePeriodExpireYear()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiodexpireyear"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondsLeft()J
    .locals 8

    .prologue
    .line 80
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireDay()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireMinute()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireSecond()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 81
    .local v6, d1:Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 82
    .local v7, today:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mType:I

    return v0
.end method

.method public getValidity()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "validityperiod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValidityType()Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->values()[Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v2, "validitytype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isExpired()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "isexpired"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPerpetual()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "isperpetual"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mBundle:Landroid/os/Bundle;

    const-string v1, "isstarted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTrial()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->mIsTrial:Z

    return v0
.end method
