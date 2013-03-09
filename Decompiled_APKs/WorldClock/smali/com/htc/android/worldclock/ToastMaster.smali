.class public Lcom/htc/android/worldclock/ToastMaster;
.super Ljava/lang/Object;
.source "ToastMaster.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 29
    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 41
    sget-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 45
    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 1
    .parameter "toast"

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 33
    sget-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 36
    :cond_0
    sput-object p0, Lcom/htc/android/worldclock/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 37
    return-void
.end method
