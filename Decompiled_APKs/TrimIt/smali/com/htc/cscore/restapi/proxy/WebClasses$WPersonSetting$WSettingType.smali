.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WSettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

.field public static final enum SettingDate:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

.field public static final enum SettingNumber:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

.field public static final enum SettingString:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

.field public static final enum SettingUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    const-string v1, "SettingUnknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    .line 562
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    const-string v1, "SettingDate"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingDate:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    .line 563
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    const-string v1, "SettingString"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingString:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    .line 564
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    const-string v1, "SettingNumber"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingNumber:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    .line 560
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingDate:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingString:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->SettingNumber:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 560
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

    return-object v0
.end method
