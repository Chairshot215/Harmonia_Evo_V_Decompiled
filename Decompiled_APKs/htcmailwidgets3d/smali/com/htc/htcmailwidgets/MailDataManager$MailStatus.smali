.class public Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
.super Ljava/lang/Object;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MailStatus"
.end annotation


# instance fields
.field deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field messageId_:J

.field reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 203
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 204
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 205
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 206
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 207
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 208
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 209
    return-void
.end method
