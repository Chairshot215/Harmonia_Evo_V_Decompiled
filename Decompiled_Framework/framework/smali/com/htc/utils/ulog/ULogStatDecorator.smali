.class abstract Lcom/htc/utils/ulog/ULogStatDecorator;
.super Ljava/lang/Object;
.source "ULogStatDecorator.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogStat;


# instance fields
.field protected mULogStat:Lcom/htc/utils/ulog/ULogStat;


# direct methods
.method protected constructor <init>(Lcom/htc/utils/ulog/ULogStat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/utils/ulog/UException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/htc/utils/ulog/UException;

    const-string v1, "ULogStat reference is null"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->addRef()V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->getAppId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->getCategory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->getCount()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCounterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->getCounterName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogStat;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
