.class public Lcom/htc/dmc/utils/HtcCustomizedDeviceName;
.super Ljava/lang/Object;
.source "HtcCustomizedDeviceName.java"


# static fields
.field public static final ATSTAG:Ljava/lang/String; = "MASD"

.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceData"

.field private static final FUNCTION_ENTRIES:Ljava/lang/String; = "device_name"

.field private static final LOGV:Z = false

.field private static final MARKET_NAME_ENTRIES:Ljava/lang/String; = "market_name"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"

.field private static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field private static mDeviceName:Ljava/lang/String;

.field private static mHasCustomizedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->readCustomizedData(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    .line 76
    sget-boolean v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->readDefaultData(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    return-object v0

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->readDefaultData(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected static parseDeviceName()V
    .locals 6

    .prologue
    .line 153
    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 178
    .local v1, deviceName:Ljava/lang/String;
    .local v2, hasDeviceId:Z
    .local v3, splitAt:I
    :goto_0
    return-void

    .line 154
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #hasDeviceId:Z
    .end local v3           #splitAt:I
    :cond_0
    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1       #deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 157
    .restart local v2       #hasDeviceId:Z
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 160
    .restart local v3       #splitAt:I
    :goto_1
    if-ltz v3, :cond_2

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 162
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    const/4 v2, 0x1

    .line 164
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 172
    .end local v0           #ch:C
    :cond_2
    if-eqz v2, :cond_3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 173
    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_3
    sput-object v1, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    const-string v4, "Settings"

    const-string v5, "properties"

    invoke-static {p0, v4, v5}, Lcom/htc/dmc/utils/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dmc/utils/HtcCustomizedData;

    move-result-object v0

    .line 98
    .local v0, customizedData:Lcom/htc/dmc/utils/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/htc/dmc/utils/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    .line 101
    .local v1, deviceName:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 103
    const-string v4, "market_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 106
    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const-string v5, "NA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :cond_0
    const-string v4, "system"

    const-string v5, "deviceData"

    invoke-static {p0, v4, v5}, Lcom/htc/dmc/utils/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dmc/utils/HtcCustomizedData;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/htc/dmc/utils/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    if-nez v1, :cond_2

    move v2, v3

    .line 129
    :cond_1
    :goto_0
    return v2

    .line 121
    :cond_2
    const-string v4, "device_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 122
    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const-string v5, "NA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    move v2, v3

    .line 124
    goto :goto_0
.end method

.method public static readDefaultData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 142
    const-string v0, ""

    sget-object v1, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 149
    :cond_0
    sget-object v0, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method
