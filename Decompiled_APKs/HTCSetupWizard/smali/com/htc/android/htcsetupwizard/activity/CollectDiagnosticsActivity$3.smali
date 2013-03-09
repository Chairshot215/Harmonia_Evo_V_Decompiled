.class Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$3;
.super Landroid/os/Handler;
.source "CollectDiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 250
    :pswitch_0
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "waiting for CIQ timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->dismissLoadingDialog()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
