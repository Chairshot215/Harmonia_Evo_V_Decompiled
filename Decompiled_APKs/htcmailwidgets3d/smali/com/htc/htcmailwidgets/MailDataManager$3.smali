.class final Lcom/htc/htcmailwidgets/MailDataManager$3;
.super Ljava/lang/Object;
.source "MailDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailDataManager;->updateTimes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2897
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2899
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2900
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->updateTimeString()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2000()V

    .line 2901
    return-void
.end method
