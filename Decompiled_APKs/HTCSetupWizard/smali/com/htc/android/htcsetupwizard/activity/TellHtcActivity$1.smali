.class Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;
.super Ljava/lang/Object;
.source "TellHtcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 195
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->enableTellHtc()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->disableTellHtc()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V

    goto :goto_0
.end method
