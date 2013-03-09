.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PDE_PORT.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DM_NVI_ID_PDE_PORT"


# instance fields
.field private PDE_PORT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 15
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    .local v1, convert:I
    const-string v2, "DM_NVI_ID_PDE_PORT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCmdData.convert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, PDEPort:Ljava/lang/String;
    const-string v2, "DM_NVI_ID_PDE_PORT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCmdData.PDEPort (1):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v2, "DM_NVI_ID_PDE_PORT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCmdData.PDEPort (2):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->mCurrentCmdData:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->mCurrentCmdData:Ljava/lang/String;

    return-object v2
.end method

.method public getPDEPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    const-string v0, "DM_NVI_ID_PDE_PORT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPDEPort.PDE_PORT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 65
    return-void
.end method

.method public read()V
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    .line 32
    const-string v0, "DM_NVI_ID_PDE_PORT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read.PDE_PORT (1):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    .line 36
    const-string v0, "DM_NVI_ID_PDE_PORT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read.PDE_PORT (2):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public returnGenerateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPDEPort(Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    .line 24
    const-string v0, "DM_NVI_ID_PDE_PORT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPDEPort.PDE_PORT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->PDE_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_PORT;->read()V

    .line 42
    return-void
.end method
