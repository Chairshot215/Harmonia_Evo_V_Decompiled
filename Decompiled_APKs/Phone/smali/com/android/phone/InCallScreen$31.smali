.class Lcom/android/phone/InCallScreen$31;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V
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
    .line 9460
    iput-object p1, p0, Lcom/android/phone/InCallScreen$31;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 9462
    iget-object v0, p0, Lcom/android/phone/InCallScreen$31;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/InCallScreen;->htcCdmaCallGuardResult(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$5300(Lcom/android/phone/InCallScreen;Z)V

    .line 9463
    iget-object v0, p0, Lcom/android/phone/InCallScreen$31;->this$0:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    #calls: Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$5400(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 9464
    iget-object v0, p0, Lcom/android/phone/InCallScreen$31;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 9465
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 9466
    return-void
.end method
