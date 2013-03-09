.class Lcom/sprint/internal/SystemProperties$SettingProp;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingProp"
.end annotation


# instance fields
.field id:I

.field settingName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sprint/internal/SystemProperties$SettingProp;->id:I

    iput-object p2, p0, Lcom/sprint/internal/SystemProperties$SettingProp;->settingName:Ljava/lang/String;

    return-void
.end method

.method static getSettingName(I)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/sprint/internal/SystemProperties$SettingProp;->id:I

    if-ne p0, v2, :cond_0

    sget-object v2, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    aget-object v2, v2, v0

    iget-object v1, v2, Lcom/sprint/internal/SystemProperties$SettingProp;->settingName:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
