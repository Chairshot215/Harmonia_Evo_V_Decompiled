.class public Lcom/htc/ipl/MsgHandler;
.super Landroid/os/Handler;
.source "MsgHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field public static final MSG_TYPE_DL_ABORTED:I = 0x3

.field public static final MSG_TYPE_DL_ENDED:I = 0x2

.field public static final MSG_TYPE_DL_STARTED:I = 0x1

.field public static final MSG_TYPE_DM_ABORTED:I = 0x6

.field public static final MSG_TYPE_DM_ENDED:I = 0x5

.field public static final MSG_TYPE_DM_STARTED:I = 0x4

.field public static final MSG_TYPE_DOWNLOADING:I

.field private static me:Lcom/htc/ipl/MsgHandler;


# instance fields
.field private mDmSession:Lcom/htc/omadm/rule/DMSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/MsgHandler;->me:Lcom/htc/ipl/MsgHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/MsgHandler;->mDmSession:Lcom/htc/omadm/rule/DMSession;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/htc/ipl/MsgHandler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/ipl/MsgHandler;->me:Lcom/htc/ipl/MsgHandler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/ipl/MsgHandler;

    invoke-direct {v0}, Lcom/htc/ipl/MsgHandler;-><init>()V

    sput-object v0, Lcom/htc/ipl/MsgHandler;->me:Lcom/htc/ipl/MsgHandler;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/ipl/MsgHandler;->me:Lcom/htc/ipl/MsgHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 37
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 38
    .local v1, statusStr:Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 39
    .local v0, msgToHtc:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->handleMessage(Landroid/os/Message;)V

    .line 81
    :cond_0
    if-eqz v1, :cond_1

    .line 82
    const-string v2, "HtcIPL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    return-void

    .line 43
    :pswitch_0
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    const-string v1, "DL Session Started"

    .line 53
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v1, "DL Session Ended"

    .line 57
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v1, "DL Session Aborted"

    .line 61
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 64
    :pswitch_4
    const-string v1, "DM Session Started"

    .line 65
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 68
    :pswitch_5
    const-string v1, "DM Session Ended"

    .line 69
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 72
    :pswitch_6
    const-string v1, "DM Session Aborted"

    .line 73
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
