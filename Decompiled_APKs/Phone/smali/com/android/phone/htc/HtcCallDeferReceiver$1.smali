.class Lcom/android/phone/htc/HtcCallDeferReceiver$1;
.super Ljava/lang/Object;
.source "HtcCallDeferReceiver.java"

# interfaces
.implements Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/HtcCallDeferReceiver;->updateLockscreenReminder(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/HtcCallDeferReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/htc/HtcCallDeferReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/htc/HtcCallDeferReceiver$1;->this$0:Lcom/android/phone/htc/HtcCallDeferReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 100
    const-string v0, "HtcCallDeferReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
