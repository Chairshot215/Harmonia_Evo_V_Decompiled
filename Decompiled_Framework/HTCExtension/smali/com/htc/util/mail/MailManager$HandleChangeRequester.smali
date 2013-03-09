.class Lcom/htc/util/mail/MailManager$HandleChangeRequester;
.super Landroid/os/Handler;
.source "MailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/MailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleChangeRequester"
.end annotation


# static fields
.field private static final MSG_HANDLE_FOLDERS_CHANGE:I = 0x3e9

.field private static final MSG_HANDLE_MESSAGE_CHANGE:I = 0x3e8


# instance fields
.field private isHandleFoldersChangeInProcessing:Z

.field private isHandleMessageChangeInProcessing:Z

.field final synthetic this$0:Lcom/htc/util/mail/MailManager;


# direct methods
.method private constructor <init>(Lcom/htc/util/mail/MailManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->this$0:Lcom/htc/util/mail/MailManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/MailManager;Lcom/htc/util/mail/MailManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;-><init>(Lcom/htc/util/mail/MailManager;)V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;-><init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e9

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester$2;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester$2;-><init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public requestHandleFoldersChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    if-eqz v0, :cond_0

    const-string v0, "MailManager"

    const-string v1, "HandleFoldersChange() already in process, go home!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestHandleMessageChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    if-eqz v0, :cond_0

    const-string v0, "MailManager"

    const-string v1, "HandleMessageChange() already in process, go home!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
