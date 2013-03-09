.class final Lcom/htc/htcmailwidgets/MailDataManager$2;
.super Ljava/lang/Object;
.source "MailDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailDataManager;->updateContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2886
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2888
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2889
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->updatePhoto()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1800()V

    .line 2890
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->updateContactStatus()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1900()V

    .line 2891
    return-void
.end method
