.class Lcom/android/phone/InCallScreen$29;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
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
    .line 8283
    iput-object p1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8285
    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    .line 8287
    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 8289
    .local v0, hasActiveCall:Z
    if-eqz v0, :cond_0

    .line 8291
    const-string v1, "InCallScreen"

    const-string v2, "mCallLongPress switchSpeakerOnOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8293
    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    .line 8295
    :cond_0
    return-void
.end method
