.class public Lcom/htc/video/Customizable/CustTabPluginDLNA;
.super Ljava/lang/Object;
.source "CustTabPluginDLNA.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/video/Customizable/CustTabPluginDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/video/Customizable/CustTabPluginDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStyleExpandable()Z
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 17
    .local v0, bResult:Z
    const/4 v1, 0x2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x9b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x94

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 24
    :cond_1
    return v0
.end method
