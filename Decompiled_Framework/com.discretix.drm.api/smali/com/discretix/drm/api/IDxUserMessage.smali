.class public Lcom/discretix/drm/api/IDxUserMessage;
.super Ljava/lang/Object;
.source "IDxUserMessage.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxUserMessage;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetMessageCode()Lcom/discretix/drm/api/EDxMessageCode;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxUserMessage_GetMessageCode(JLcom/discretix/drm/api/IDxUserMessage;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxMessageCode;->swigToEnum(I)Lcom/discretix/drm/api/EDxMessageCode;

    move-result-object v0

    return-object v0
.end method

.method public GetMessageParam(Lcom/discretix/drm/api/EDxMessageParamCode;)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxUserMessage_GetMessageParam(JLcom/discretix/drm/api/IDxUserMessage;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMessageSeverity()Lcom/discretix/drm/api/EDxMessageSeverity;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxUserMessage_GetMessageSeverity(JLcom/discretix/drm/api/IDxUserMessage;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxMessageSeverity;->swigToEnum(I)Lcom/discretix/drm/api/EDxMessageSeverity;

    move-result-object v0

    return-object v0
.end method

.method public GetMessageType()Lcom/discretix/drm/api/EDxMessageType;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxUserMessage_GetMessageType(JLcom/discretix/drm/api/IDxUserMessage;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxMessageType;->swigToEnum(I)Lcom/discretix/drm/api/EDxMessageType;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxUserMessage;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxUserMessage;->delete()V

    return-void
.end method
