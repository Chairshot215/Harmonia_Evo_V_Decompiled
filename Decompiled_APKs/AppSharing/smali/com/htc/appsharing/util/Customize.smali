.class public Lcom/htc/appsharing/util/Customize;
.super Ljava/lang/Object;
.source "Customize.java"


# static fields
.field public static final COMPOSE_MSG_ID:I

.field public static final SKU_CHS:Z

.field public static final URL_MARKET_QUERY_PNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lcom/htc/appsharing/util/Customize;->getURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/appsharing/util/Customize;->URL_MARKET_QUERY_PNAME:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/htc/appsharing/util/Customize;->isChinaSKU()Z

    move-result v0

    sput-boolean v0, Lcom/htc/appsharing/util/Customize;->SKU_CHS:Z

    .line 9
    invoke-static {}, Lcom/htc/appsharing/util/Customize;->getComposeMsgID()I

    move-result v0

    sput v0, Lcom/htc/appsharing/util/Customize;->COMPOSE_MSG_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComposeMsgID()I
    .locals 2

    .prologue
    .line 24
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 25
    const v0, 0x7f06000a

    .line 27
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f060009

    goto :goto_0
.end method

.method public static getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 12
    const-string v0, "http://download.htcsense.net.cn/item/"

    .line 14
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://market.android.com/search?q=pname:"

    goto :goto_0
.end method

.method public static isChinaSKU()Z
    .locals 2

    .prologue
    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
