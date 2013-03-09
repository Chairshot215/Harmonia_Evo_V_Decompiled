.class Lcom/android/phone/HtcOTASPActivity$1;
.super Ljava/lang/Object;
.source "HtcOTASPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcOTASPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcOTASPActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcOTASPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/HtcOTASPActivity$1;->this$0:Lcom/android/phone/HtcOTASPActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/phone/HtcOTASPActivity$1;->this$0:Lcom/android/phone/HtcOTASPActivity;

    iget-object v1, v1, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/HtcOTASPActivity$1;->this$0:Lcom/android/phone/HtcOTASPActivity;

    const-class v2, Lcom/android/phone/EmergencyDialer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OTASP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/phone/HtcOTASPActivity$1;->this$0:Lcom/android/phone/HtcOTASPActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/HtcOTASPActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
