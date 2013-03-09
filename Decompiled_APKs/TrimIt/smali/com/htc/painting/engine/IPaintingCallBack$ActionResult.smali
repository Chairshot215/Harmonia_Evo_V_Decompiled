.class public final enum Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;
.super Ljava/lang/Enum;
.source "IPaintingCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/IPaintingCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

.field public static final enum Cancel:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

.field public static final enum Fail:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

.field public static final enum Success:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Success:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    new-instance v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Fail:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    new-instance v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v4}, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Cancel:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    sget-object v1, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Success:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Fail:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Cancel:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->$VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->$VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    invoke-virtual {v0}, [Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    return-object v0
.end method
