.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WResyncStateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public static final enum ResyncStateBeginHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public static final enum ResyncStateEndHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public static final enum ResyncStateInProgress:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public static final enum ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public static final enum ResyncStatePending:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const-string v1, "ResyncStateInSync"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 861
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const-string v1, "ResyncStateBeginHandshake"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 862
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const-string v1, "ResyncStatePending"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStatePending:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 863
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const-string v1, "ResyncStateInProgress"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 864
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const-string v1, "ResyncStateEndHandshake"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 859
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStatePending:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

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
    .line 859
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 859
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    return-object v0
.end method
