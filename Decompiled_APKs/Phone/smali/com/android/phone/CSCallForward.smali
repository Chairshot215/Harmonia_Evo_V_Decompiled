.class public Lcom/android/phone/CSCallForward;
.super Ljava/lang/Object;
.source "CSCallForward.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CSCallForward$MyHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION:Ljava/lang/String; = "ACTION"

.field public static final EXTRA_ACTION_RST_FOR_CS:I = 0x3

.field public static final EXTRA_ACTION_RST_FOR_STATUSBAR:I = 0x5

.field public static final EXTRA_ACTION_SET_BY_CS:I = 0x2

.field public static final EXTRA_ACTION_SET_BY_STATUSBAR:I = 0x4

.field public static final EXTRA_ENABLE:Ljava/lang/String; = "ENABLE"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "NUMBER"

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.htc.phone.callforwarding"

.field private static final TAG:Ljava/lang/String; = "CSCallForward"

.field private static final _DEBUG:Z


# instance fields
.field private mEnable:Z

.field private mHandler:Lcom/android/phone/CSCallForward$MyHandler;

.field private mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "enable"
    .parameter "extraAction"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CSCallForward;->mEnable:Z

    .line 69
    iput-object p2, p0, Lcom/android/phone/CSCallForward;->mNumber:Ljava/lang/String;

    .line 70
    iput-boolean p3, p0, Lcom/android/phone/CSCallForward;->mEnable:Z

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CSCallForward;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    new-instance v0, Lcom/android/phone/CSCallForward$MyHandler;

    invoke-direct {v0, p1, p4}, Lcom/android/phone/CSCallForward$MyHandler;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    .line 73
    invoke-direct {p0}, Lcom/android/phone/CSCallForward;->setNumber()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/phone/CSCallForward;->updateCSCallForwardStatus(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private setNumber()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 80
    iget-boolean v0, p0, Lcom/android/phone/CSCallForward;->mEnable:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/phone/CSCallForward;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/phone/CSCallForward;->mNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/CSCallForward$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CSCallForward;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CSCallForward;->mNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    invoke-virtual {v0, v5}, Lcom/android/phone/CSCallForward$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v3, v2

    move v5, v2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private static updateCSCallForwardStatus(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "extraAction"

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.phone.callforwarding"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 56
    const-string v1, "ACTION"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    const/4 v1, 0x1

    return v1

    .line 57
    :cond_1
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 58
    const-string v1, "ACTION"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/android/phone/CSCallForward;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    iput-object v1, p0, Lcom/android/phone/CSCallForward;->mNumber:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    invoke-virtual {v0}, Lcom/android/phone/CSCallForward$MyHandler;->finish()V

    .line 107
    iput-object v1, p0, Lcom/android/phone/CSCallForward;->mHandler:Lcom/android/phone/CSCallForward$MyHandler;

    .line 109
    :cond_0
    return-void
.end method
