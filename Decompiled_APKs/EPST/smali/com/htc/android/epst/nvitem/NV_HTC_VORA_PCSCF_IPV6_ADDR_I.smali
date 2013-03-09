.class public Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "NV_HTC_VORA_PCSCF_IPV6_ADDR_I.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NV_HTC_VORA_PCSCF_IPV6_ADDR_I"

.field public static final NV_MAX_SIZE:I = 0x20


# instance fields
.field private DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, value:Ljava/lang/String;
    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->mCurrentCmdData:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public write()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->DATA:Ljava/lang/String;

    .line 36
    return-void
.end method
