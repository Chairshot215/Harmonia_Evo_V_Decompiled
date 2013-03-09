.class public Lcom/discretix/drm/api/DxDrmMimeTypes;
.super Ljava/lang/Object;
.source "DxDrmMimeTypes.java"


# static fields
.field public static final DX_DD_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DX_MIME_DCF:Ljava/lang/String; = "application/vnd.oma.drm.dcf"

.field public static final DX_MULTIPART_RELATED_MIME_TYPE:Ljava/lang/String; = "multipart/related"

.field public static final DX_OMA_V1_CONTENT_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final DX_OMA_V1_DRM_MESSAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final DX_OMA_V1_RO_WBXML_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final DX_OMA_V1_RO_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final DX_OMA_V2_ROAP_PDU:Ljava/lang/String; = "application/vnd.oma.drm.roap-pdu+xml"

.field public static final DX_OMA_V2_ROAP_TRIGGER:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field public static final DX_OMA_V2_ROAP_TRIGGER_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field public static final DX_OMA_V2_RO_RESPONSE:Ljava/lang/String; = "application/vnd.oma.drm.ro+xml"

.field public static final DX_PLAYREADY_PYA_MIME_TYPE:Ljava/lang/String; = "audio/vnd.ms-playready.media.pya"

.field public static final DX_PLAYREADY_PYV_MIME_TYPE:Ljava/lang/String; = "video/vnd.ms-playready.media.pyv"

.field public static final DX_PLAYREADY_PY_INITIATOR_MIME_TYPE:Ljava/lang/String; = "application/vnd.ms-playready.initiator+xml"

.field public static final DX_WMDRM_ASF_MIME_TYPE:Ljava/lang/String; = "video/x-ms-asf"

.field public static final DX_WMDRM_WMA_MIME_TYPE:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final DX_WMDRM_WMV_MIME_TYPE:Ljava/lang/String; = "video/x-ms-wmv"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDrmRightsMimeType(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v3, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    const-string v3, "application/vnd.oma.drm.ro+xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    const-string v3, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isOmaV1(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isOmaV2(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/discretix/drm/api/DxDrmMimeTypes;->isOmaV2Rights(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isOmaV2Rights(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "application/vnd.oma.drm.ro+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPlayReadyContentMimeType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "video/x-ms-wmv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "video/x-ms-asf"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "audio/vnd.ms-playready.media.pya"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "video/vnd.ms-playready.media.pyv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v2, "application/vnd.ms-playready.initiator+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
