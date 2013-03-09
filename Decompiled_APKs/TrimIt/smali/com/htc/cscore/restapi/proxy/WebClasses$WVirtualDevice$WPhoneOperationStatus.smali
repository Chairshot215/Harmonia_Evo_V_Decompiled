.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPhoneOperationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public static final enum Off:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public static final enum On:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public static final enum Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 855
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 856
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Off:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 857
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    const-string v1, "On"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->On:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 854
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Off:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->On:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

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
    .line 854
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 854
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    return-object v0
.end method
