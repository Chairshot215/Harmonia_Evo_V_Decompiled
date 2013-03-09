.class Lcom/android/dmportread/DMCommandService$7;
.super Ljava/lang/Object;
.source "DMCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 5071
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$7;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5073
    const-string v0, "DMCmdSvs"

    const-string v1, "CB_SetUSBDebuggingStatus: disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$7;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5075
    return-void
.end method
