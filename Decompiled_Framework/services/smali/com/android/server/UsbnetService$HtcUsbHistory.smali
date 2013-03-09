.class Lcom/android/server/UsbnetService$HtcUsbHistory;
.super Ljava/lang/Object;
.source "UsbnetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbnetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcUsbHistory"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public event:I

.field final synthetic this$0:Lcom/android/server/UsbnetService;

.field public timeStamp:J


# direct methods
.method private constructor <init>(Lcom/android/server/UsbnetService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UsbnetService$HtcUsbHistory;->this$0:Lcom/android/server/UsbnetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UsbnetService;Lcom/android/server/UsbnetService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UsbnetService$HtcUsbHistory;-><init>(Lcom/android/server/UsbnetService;)V

    return-void
.end method
