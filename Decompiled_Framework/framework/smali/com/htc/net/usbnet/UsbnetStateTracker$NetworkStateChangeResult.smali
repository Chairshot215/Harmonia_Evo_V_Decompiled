.class Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;
.super Ljava/lang/Object;
.source "UsbnetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/usbnet/UsbnetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStateChangeResult"
.end annotation


# instance fields
.field networkId:I

.field state:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method constructor <init>(Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    iput p2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;->networkId:I

    return-void
.end method
