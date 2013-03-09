.class public final enum Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
.super Ljava/lang/Enum;
.source "HtcBuletoothConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuletoothType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

.field public static final enum CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

.field public static final enum DISCONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v2}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v3}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->DISCONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    sget-object v1, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->DISCONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->$VALUES:[Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    return-object v0
.end method

.method public static values()[Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->$VALUES:[Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0}, [Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    return-object v0
.end method
