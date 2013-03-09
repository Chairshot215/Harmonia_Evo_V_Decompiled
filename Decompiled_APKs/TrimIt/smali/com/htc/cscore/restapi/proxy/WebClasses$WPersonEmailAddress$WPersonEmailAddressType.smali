.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPersonEmailAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

.field public static final enum EmailCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

.field public static final enum EmailHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

.field public static final enum EmailOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

.field public static final enum EmailWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 510
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    const-string v1, "EmailHome"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    .line 511
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    const-string v1, "EmailWork"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    .line 512
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    const-string v1, "EmailOther"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    .line 513
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    const-string v1, "EmailCustom"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    .line 509
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

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
    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;
    .locals 1
    .parameter "name"

    .prologue
    .line 509
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

    return-object v0
.end method
