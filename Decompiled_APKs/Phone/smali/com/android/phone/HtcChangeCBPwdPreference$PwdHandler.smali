.class Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;
.super Landroid/os/Handler;
.source "HtcChangeCBPwdPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcChangeCBPwdPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PwdHandler"
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_PWD:I


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcChangeCBPwdPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcChangeCBPwdPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;->this$0:Lcom/android/phone/HtcChangeCBPwdPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcChangeCBPwdPreference;Lcom/android/phone/HtcChangeCBPwdPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;-><init>(Lcom/android/phone/HtcChangeCBPwdPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;->this$0:Lcom/android/phone/HtcChangeCBPwdPreference;

    #getter for: Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->access$100(Lcom/android/phone/HtcChangeCBPwdPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;->this$0:Lcom/android/phone/HtcChangeCBPwdPreference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;->this$0:Lcom/android/phone/HtcChangeCBPwdPreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcChangeCBPwdPreference;->handleChangeCallBarringPassword(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->access$200(Lcom/android/phone/HtcChangeCBPwdPreference;Landroid/os/AsyncResult;)V

    .line 212
    :cond_0
    return-void
.end method
