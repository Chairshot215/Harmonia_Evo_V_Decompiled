.class public Lcom/android/phone/HtcCdmaDMCommander;
.super Ljava/lang/Object;
.source "HtcCdmaDMCommander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;
    }
.end annotation


# static fields
.field public static final CMD_DIGITAL_OFFLINE_MODE:Ljava/lang/String; = "C8290100"

.field public static final CMD_RESET_MODE:Ljava/lang/String; = "C8290200"

.field public static final CMD_SPC_MODE:Ljava/lang/String; = "C841"

.field public static final CMD_STATE_RESPONSE:I = 0x0

.field public static final EVENT_INIT:I = 0x0

.field public static final EVENT_RESPONSE_DIGITAL_OFFLINE:I = 0x4

.field public static final EVENT_RESPONSE_MAPPING:[Ljava/lang/String; = null

.field public static final EVENT_RESPONSE_MSL:I = 0x1

.field public static final EVENT_RESPONSE_RESET_MODE:I = 0x5

.field public static final EVENT_RESPONSE_SPC:I = 0x2

.field public static final EVENT_RESPONSE_WPRL:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaDMCommander"

.field public static MSLcode:Ljava/lang/String;

.field public static PRLW_Commands:[Ljava/lang/String;

.field public static PRLW_Commands_idx:I


# instance fields
.field private final DBG:Z

.field public cmd:Ljava/lang/String;

.field protected key:Ljava/lang/Integer;

.field mContext:Landroid/content/Context;

.field mHandler:Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;

.field public phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    sput-object v3, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands:[Ljava/lang/String;

    .line 34
    sput v2, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EVENT_INIT"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "EVENT_RESPONSE_MSL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EVENT_RESPONSE_SPC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EVENT_RESPONSE_WPRL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_RESPONSE_DIGITAL_OFFLINE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVENT_RESPONSE_RESET_MODE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/HtcCdmaDMCommander;->EVENT_RESPONSE_MAPPING:[Ljava/lang/String;

    .line 43
    sput-object v3, Lcom/android/phone/HtcCdmaDMCommander;->MSLcode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->DBG:Z

    .line 40
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->key:Ljava/lang/Integer;

    .line 50
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HtcCdmaDMCommander"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->mThread:Landroid/os/HandlerThread;

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDMCommander;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->phone:Lcom/android/internal/telephony/Phone;

    .line 56
    new-instance v1, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;-><init>(Lcom/android/phone/HtcCdmaDMCommander;)V

    iput-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->mHandler:Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public ExecutePRLW([Ljava/lang/String;)V
    .locals 4
    .parameter "commands"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    sput-object p1, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands:[Ljava/lang/String;

    .line 65
    sput v2, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    .line 66
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 67
    .local v0, mslcmds:[Ljava/lang/String;
    const-string v1, "UNIAT"

    aput-object v1, v0, v2

    .line 68
    const-string v1, "AT+HTC_RMSL=0\r"

    aput-object v1, v0, v3

    .line 69
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaDMCommander;->mHandler:Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 71
    return-void
.end method

.method protected sendCmd(Ljava/lang/String;I)V
    .locals 2
    .parameter "cmdtoSend"
    .parameter "EVENT_TYPE"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->mHandler:Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->key:Ljava/lang/Integer;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDMCommander;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 78
    return-void
.end method
