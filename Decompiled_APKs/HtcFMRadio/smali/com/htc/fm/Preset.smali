.class public Lcom/htc/fm/Preset;
.super Ljava/lang/Object;
.source "Preset.java"


# instance fields
.field freq:I

.field id:I

.field rawRssi:I

.field rds:Ljava/lang/String;

.field rds_PTY:I

.field rowId:I

.field rssi:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/Preset;->rowId:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/htc/fm/Preset;->rds_PTY:I

    .line 15
    iput v1, p0, Lcom/htc/fm/Preset;->freq:I

    .line 17
    iput v1, p0, Lcom/htc/fm/Preset;->rssi:I

    .line 19
    iput v1, p0, Lcom/htc/fm/Preset;->rawRssi:I

    return-void
.end method


# virtual methods
.method public CopyParam(Lcom/htc/fm/Preset;)V
    .locals 2
    .parameter "preset"

    .prologue
    .line 24
    iget v0, p1, Lcom/htc/fm/Preset;->id:I

    iput v0, p0, Lcom/htc/fm/Preset;->id:I

    .line 25
    iget v0, p1, Lcom/htc/fm/Preset;->rowId:I

    iput v0, p0, Lcom/htc/fm/Preset;->rowId:I

    .line 28
    iget-object v0, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 33
    :goto_0
    iget-object v0, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 39
    :goto_1
    iget v0, p1, Lcom/htc/fm/Preset;->rds_PTY:I

    iput v0, p0, Lcom/htc/fm/Preset;->rds_PTY:I

    .line 40
    iget v0, p1, Lcom/htc/fm/Preset;->freq:I

    iput v0, p0, Lcom/htc/fm/Preset;->freq:I

    .line 41
    iget v0, p1, Lcom/htc/fm/Preset;->rssi:I

    iput v0, p0, Lcom/htc/fm/Preset;->rssi:I

    .line 42
    iget v0, p1, Lcom/htc/fm/Preset;->rawRssi:I

    iput v0, p0, Lcom/htc/fm/Preset;->rawRssi:I

    .line 43
    return-void

    .line 31
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/Preset;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") rowId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Freq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Title("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Rds("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Rssi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/Preset;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") RawRssi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/Preset;->rawRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
