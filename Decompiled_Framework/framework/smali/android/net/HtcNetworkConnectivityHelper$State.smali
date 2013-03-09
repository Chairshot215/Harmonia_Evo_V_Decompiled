.class public final enum Landroid/net/HtcNetworkConnectivityHelper$State;
.super Ljava/lang/Enum;
.source "HtcNetworkConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcNetworkConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/HtcNetworkConnectivityHelper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/HtcNetworkConnectivityHelper$State;

.field public static final enum CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

.field public static final enum NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/HtcNetworkConnectivityHelper$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Landroid/net/HtcNetworkConnectivityHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    new-instance v0, Landroid/net/HtcNetworkConnectivityHelper$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v3}, Landroid/net/HtcNetworkConnectivityHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/HtcNetworkConnectivityHelper$State;

    sget-object v1, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->$VALUES:[Landroid/net/HtcNetworkConnectivityHelper$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 1

    const-class v0, Landroid/net/HtcNetworkConnectivityHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object v0
.end method

.method public static values()[Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 1

    sget-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->$VALUES:[Landroid/net/HtcNetworkConnectivityHelper$State;

    invoke-virtual {v0}, [Landroid/net/HtcNetworkConnectivityHelper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object v0
.end method
