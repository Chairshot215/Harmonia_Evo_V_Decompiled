.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WAccountStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

.field public static final enum Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

.field public static final enum Suspended:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    const-string v1, "Active"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    .line 19
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    const-string v1, "Suspended"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Suspended:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Suspended:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    return-object v0
.end method
