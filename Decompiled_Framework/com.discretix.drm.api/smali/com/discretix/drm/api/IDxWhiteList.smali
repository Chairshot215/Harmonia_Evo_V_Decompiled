.class public Lcom/discretix/drm/api/IDxWhiteList;
.super Ljava/lang/Object;
.source "IDxWhiteList.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxWhiteList;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Add(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWhiteList_Add(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public Contains(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWhiteList_Contains(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Delete(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWhiteList_Delete(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetAt(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWhiteList_GetAt(JLcom/discretix/drm/api/IDxWhiteList;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetCount()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWhiteList_GetCount(JLcom/discretix/drm/api/IDxWhiteList;)J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxWhiteList;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxWhiteList;->delete()V

    return-void
.end method
