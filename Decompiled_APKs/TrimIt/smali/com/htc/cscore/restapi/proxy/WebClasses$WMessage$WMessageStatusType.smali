.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WMessageStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessagePendingSend:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageReceived:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageSendFailed:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageSendPartialSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageSendSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageUnknownStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public static final enum MessageWaitingForAttachment:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageUnknownStatus"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 353
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessagePendingSend"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 354
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageSendSuccess"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 355
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageSendFailed"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 356
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageReceived"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageReceived:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 357
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageSendPartialSuccess"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 358
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    const-string v1, "MessageWaitingForAttachment"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    .line 351
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageReceived:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

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
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;
    .locals 1
    .parameter "name"

    .prologue
    .line 351
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

    return-object v0
.end method
