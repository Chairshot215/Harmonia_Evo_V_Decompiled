.class Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$2;
.super Landroid/content/BroadcastReceiver;
.source "MoreRegionalCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->receiverRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$2;->this$0:Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorChangeInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "mrccount"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$2;->this$0:Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;

    iget-object v0, v0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCTextNote:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    const-string v2, "mrccount"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
