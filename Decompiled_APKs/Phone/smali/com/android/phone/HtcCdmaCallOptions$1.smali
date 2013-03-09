.class Lcom/android/phone/HtcCdmaCallOptions$1;
.super Ljava/lang/Object;
.source "HtcCdmaCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaCallOptions;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$1;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 454
    const-string v0, "HtcCdmaCallOptions"

    const-string v1, "OoO get TTY Cancel double confirm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$1;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v0, v0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$1;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v1, v1, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    return-void
.end method
