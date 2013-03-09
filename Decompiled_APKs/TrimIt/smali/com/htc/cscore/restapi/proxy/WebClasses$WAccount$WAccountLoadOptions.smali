.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WAccountLoadOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

.field public static final enum Full:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

.field public static final enum Partial:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

.field public static final enum Plain:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    const-string v1, "Plain"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Plain:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    .line 28
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    const-string v1, "Partial"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Partial:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    .line 29
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    const-string v1, "Full"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Full:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Plain:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Partial:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->Full:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;

    return-object v0
.end method
