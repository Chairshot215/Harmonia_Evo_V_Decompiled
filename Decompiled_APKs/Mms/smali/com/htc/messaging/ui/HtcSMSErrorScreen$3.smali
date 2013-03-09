.class Lcom/htc/messaging/ui/HtcSMSErrorScreen$3;
.super Landroid/telephony/PhoneStateListener;
.source "HtcSMSErrorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/messaging/ui/HtcSMSErrorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;


# direct methods
.method constructor <init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$3;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$3;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    #calls: Lcom/htc/messaging/ui/HtcSMSErrorScreen;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->access$200(Lcom/htc/messaging/ui/HtcSMSErrorScreen;I)V

    .line 91
    return-void
.end method
