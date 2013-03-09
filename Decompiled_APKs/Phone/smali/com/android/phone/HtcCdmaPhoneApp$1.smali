.class Lcom/android/phone/HtcCdmaPhoneApp$1;
.super Landroid/os/Handler;
.source "HtcCdmaPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaPhoneApp;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$1;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "HtcCdmaPhoneApp"

    const-string v1, "init nGlobalOption from handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPhoneApp$1;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v0, v0, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    sput v0, Lcom/android/phone/HtcCdmaPhoneApp;->nGlobalOption:I

    .line 258
    return-void
.end method
