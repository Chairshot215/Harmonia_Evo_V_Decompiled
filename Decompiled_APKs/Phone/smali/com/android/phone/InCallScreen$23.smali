.class Lcom/android/phone/InCallScreen$23;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->setupAlertingLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8061
    iput-object p1, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8063
    iget-object v0, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8064
    iget-object v0, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    .line 8065
    iget-object v0, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->resetArcControl()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)V

    .line 8069
    :goto_0
    return-void

    .line 8067
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->incomingCallLockScreenDeclineCall()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)V

    goto :goto_0
.end method
