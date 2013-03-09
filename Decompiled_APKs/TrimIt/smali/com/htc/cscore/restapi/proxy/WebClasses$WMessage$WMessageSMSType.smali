.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WMessageSMSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

.field public static final enum MessageMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

.field public static final enum MessageSMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

.field public static final enum MessageUnknownType:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    const-string v1, "MessageUnknownType"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    .line 362
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    const-string v1, "MessageSMS"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageSMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    .line 363
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    const-string v1, "MessageMMS"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    .line 360
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageSMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->MessageMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

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
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;
    .locals 1
    .parameter "name"

    .prologue
    .line 360
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;

    return-object v0
.end method
