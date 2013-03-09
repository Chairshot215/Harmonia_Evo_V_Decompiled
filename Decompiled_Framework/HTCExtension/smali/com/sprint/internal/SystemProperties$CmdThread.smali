.class public Lcom/sprint/internal/SystemProperties$CmdThread;
.super Ljava/lang/Thread;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmdThread"
.end annotation


# instance fields
.field bRet:Z

.field id:I

.field se:Lcom/sprint/internal/SystemPropertiesException;

.field strResult:Ljava/lang/String;

.field strValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/internal/SystemProperties;


# direct methods
.method public constructor <init>(Lcom/sprint/internal/SystemProperties;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    iput v1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    return-void
.end method


# virtual methods
.method public getBoolResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    return v0
.end method

.method public getException()Lcom/sprint/internal/SystemPropertiesException;
    .locals 1

    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    return v0
.end method

.method public getStrResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setBoolResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    return-void
.end method

.method public setException(Lcom/sprint/internal/SystemPropertiesException;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    return-void
.end method

.method public setStrResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    return-void
.end method
