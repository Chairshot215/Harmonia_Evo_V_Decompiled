.class public Lcom/futuredial/BaseThread;
.super Ljava/lang/Thread;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/BaseThread$MyThreadHandler;,
        Lcom/futuredial/BaseThread$ThreadMessageID;
    }
.end annotation


# static fields
.field public static final ARG1_STATUS_PARSERFAIL:I = 0x2

.field public static final ARG1_STATUS_READFAIL:I = 0x1

.field public static final ARG1_STATUS_SUCCESS:I = 0x0

.field public static final ARG1_STATUS_WRITEFAIL:I = 0x3

.field public static final BTN_CANCEL:I = 0x1

.field public static final BTN_NONE:I = -0x1

.field public static final BTN_OK:I = 0x0

.field public static CancelFlag:I = 0x0

.field protected static ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler; = null

.field private static final TAG:Ljava/lang/String; = "BaseThread"

.field public static bPopupCancel:Z

.field protected static readHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

.field protected static writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;


# instance fields
.field public ThreadErrorCode:I

.field public Thread_isRunning:Ljava/lang/Boolean;

.field protected bExitThread:Ljava/lang/Boolean;

.field protected contentType:I

.field protected context:Landroid/content/Context;

.field protected uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/futuredial/BaseThread;->CancelFlag:I

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/BaseThread;->bPopupCancel:Z

    .line 99
    new-instance v0, Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-direct {v0}, Lcom/futuredial/BaseThread$MyThreadHandler;-><init>()V

    sput-object v0, Lcom/futuredial/BaseThread;->readHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    .line 100
    new-instance v0, Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-direct {v0}, Lcom/futuredial/BaseThread$MyThreadHandler;-><init>()V

    sput-object v0, Lcom/futuredial/BaseThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    .line 101
    new-instance v0, Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-direct {v0}, Lcom/futuredial/BaseThread$MyThreadHandler;-><init>()V

    sput-object v0, Lcom/futuredial/BaseThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/BaseThread;->bExitThread:Ljava/lang/Boolean;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/BaseThread;->context:Landroid/content/Context;

    .line 48
    iput v1, p0, Lcom/futuredial/BaseThread;->contentType:I

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/BaseThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 51
    iput v2, p0, Lcom/futuredial/BaseThread;->ThreadErrorCode:I

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/BaseThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 114
    return-void
.end method


# virtual methods
.method protected ASSERT(I)V
    .locals 3
    .parameter "errType"

    .prologue
    .line 170
    const-string v0, "BaseThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*****Enter method:ASSERT(),errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "BaseThread"

    const-string v1, "Exit method:ASSERT()"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected ASSERT(II)V
    .locals 4
    .parameter "errCode"
    .parameter "errType"

    .prologue
    .line 135
    const-string v1, "BaseThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter method:ASSERT(),errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "BaseThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*********Failed! errorcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, ""

    .line 145
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 148
    invoke-virtual {p0, v0}, Lcom/futuredial/BaseThread;->popupMsg(Ljava/lang/String;)V

    .line 165
    :cond_1
    :goto_1
    const-string v1, "BaseThread"

    const-string v2, "Exit method:ASSERT()"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 153
    invoke-virtual {p0, v0}, Lcom/futuredial/BaseThread;->popupMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_3
    const/16 v1, 0x4e42

    if-eq v1, p1, :cond_1

    const/16 v1, 0x4e24

    if-eq v1, p1, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Lcom/futuredial/BaseThread;->popupMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public Quit()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public declared-synchronized SetCancelFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/futuredial/BaseThread;->CancelFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected popupMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msgValue"

    .prologue
    .line 210
    return-void
.end method
