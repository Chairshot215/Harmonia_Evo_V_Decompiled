.class public Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
.super Ljava/lang/Thread;
.source "HtcSprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsprintservice/HtcSprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmdThread"
.end annotation


# instance fields
.field bRet:Z

.field id:I

.field se:Ljava/lang/Exception;

.field strResult:Ljava/lang/String;

.field strValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/htcsprintservice/HtcSprintService;


# direct methods
.method public constructor <init>(Lcom/htc/htcsprintservice/HtcSprintService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 315
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strResult:Ljava/lang/String;

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strValue:Ljava/lang/String;

    .line 319
    iput-boolean v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->bRet:Z

    .line 320
    iput v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->id:I

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->se:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getBoolResult()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->bRet:Z

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->se:Ljava/lang/Exception;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->id:I

    return v0
.end method

.method public getStrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strResult:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strValue:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public setBoolResult(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->bRet:Z

    .line 363
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->se:Ljava/lang/Exception;

    .line 326
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 345
    iput p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->id:I

    .line 346
    return-void
.end method

.method public setStrResult(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strResult:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->strValue:Ljava/lang/String;

    .line 334
    return-void
.end method
