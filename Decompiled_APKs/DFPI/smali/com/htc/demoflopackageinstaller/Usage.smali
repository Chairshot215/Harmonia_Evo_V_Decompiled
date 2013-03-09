.class public Lcom/htc/demoflopackageinstaller/Usage;
.super Ljava/lang/Object;
.source "Usage.java"


# instance fields
.field private mApplication:Ljava/lang/String;

.field private mCounter:I

.field private mUsedTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mApplication:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/htc/demoflopackageinstaller/Usage;->mCounter:I

    .line 9
    iput-wide v2, p0, Lcom/htc/demoflopackageinstaller/Usage;->mUsedTime:J

    .line 12
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mApplication:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/htc/demoflopackageinstaller/Usage;->mCounter:I

    .line 14
    iput-wide v2, p0, Lcom/htc/demoflopackageinstaller/Usage;->mUsedTime:J

    .line 15
    return-void
.end method


# virtual methods
.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/Usage;->mApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/demoflopackageinstaller/Usage;->mCounter:I

    return v0
.end method

.method public getUsedTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/htc/demoflopackageinstaller/Usage;->mUsedTime:J

    return-wide v0
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mApplication:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setCounter(I)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mCounter:I

    .line 23
    return-void
.end method

.method public setUsedTime(J)V
    .locals 0
    .parameter "usedTime"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mUsedTime:J

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Counter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/demoflopackageinstaller/Usage;->mUsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
