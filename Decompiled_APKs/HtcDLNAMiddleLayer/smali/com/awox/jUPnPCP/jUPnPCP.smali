.class public Lcom/awox/jUPnPCP/jUPnPCP;
.super Ljava/lang/Object;
.source "jUPnPCP.java"

# interfaces
.implements Lcom/awox/jUPnPCP/jUPnPCPConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDLNAMediaRestrictions(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->GetDLNAMediaRestrictions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetMediaParserManager()Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserManager;
    .locals 5

    .prologue
    .line 21
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->GetMediaParserManager()J

    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserManager;-><init>(JZ)V

    goto :goto_0
.end method

.method public static ILibError_GetErrorStr(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-static {p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ILibError_GetErrorStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static awConvert_DLNADateStrToDate(Ljava/lang/String;)Lcom/awox/jUPnPCP/ConvertDateGetResult;
    .locals 4
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/awox/jUPnPCP/ConvertDateGetResult;

    invoke-static {p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awConvert_DLNADateStrToDate(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/ConvertDateGetResult;-><init>(JZ)V

    return-object v0
.end method

.method public static awPackedData_GetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JI)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awPackedData_GetJavaData(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awPackedData_SetJavaData(JJILjava/lang/String;)V

    .line 14
    return-void
.end method

.method public static getCmdSetVolume_ABSOLUTE()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdSetVolume_ABSOLUTE_get()I

    move-result v0

    return v0
.end method

.method public static getCmdSetVolume_ALLCHANNELS()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdSetVolume_ALLCHANNELS_get()I

    move-result v0

    return v0
.end method

.method public static getCmdSetVolume_RELATIVE()I
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdSetVolume_RELATIVE_get()I

    move-result v0

    return v0
.end method

.method public static getKSeek_ABSOLUTE()I
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kSeek_ABSOLUTE_get()I

    move-result v0

    return v0
.end method

.method public static getKSeek_RELATIVE()I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kSeek_RELATIVE_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_Any()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Any_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_ContentServer()I
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_IGD()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_IGD_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_Last()I
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Last_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_RUIServer()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_RUIServer_get()I

    move-result v0

    return v0
.end method

.method public static getKUPnPDeviceType_Renderer()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v0

    return v0
.end method
