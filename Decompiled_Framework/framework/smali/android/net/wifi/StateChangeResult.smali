.class public Landroid/net/wifi/StateChangeResult;
.super Ljava/lang/Object;
.source "StateChangeResult.java"


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    iput-object p2, p0, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    iput p1, p0, Landroid/net/wifi/StateChangeResult;->networkId:I

    return-void
.end method
