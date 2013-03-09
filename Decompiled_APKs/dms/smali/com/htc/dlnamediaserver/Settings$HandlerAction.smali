.class final enum Lcom/htc/dlnamediaserver/Settings$HandlerAction;
.super Ljava/lang/Enum;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HandlerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamediaserver/Settings$HandlerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamediaserver/Settings$HandlerAction;

.field public static final enum UpdateStatus:Lcom/htc/dlnamediaserver/Settings$HandlerAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    const-string v1, "UpdateStatus"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamediaserver/Settings$HandlerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->UpdateStatus:Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    sget-object v1, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->UpdateStatus:Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->$VALUES:[Lcom/htc/dlnamediaserver/Settings$HandlerAction;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamediaserver/Settings$HandlerAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    return-object p0
.end method

.method public static final values()[Lcom/htc/dlnamediaserver/Settings$HandlerAction;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->$VALUES:[Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    invoke-virtual {v0}, [Lcom/htc/dlnamediaserver/Settings$HandlerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    return-object v0
.end method
