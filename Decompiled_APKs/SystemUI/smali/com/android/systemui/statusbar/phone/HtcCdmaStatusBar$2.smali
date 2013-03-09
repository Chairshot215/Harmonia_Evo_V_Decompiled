.class Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "HtcCdmaStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver intent, aciton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->savePreStateEnabled(Landroid/content/Context;I)V
    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
