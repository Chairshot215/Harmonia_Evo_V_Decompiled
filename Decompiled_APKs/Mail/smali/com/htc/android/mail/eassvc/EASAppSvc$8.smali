.class Lcom/htc/android/mail/eassvc/EASAppSvc$8;
.super Ljava/lang/Object;
.source "EASAppSvc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;->sendMeetingMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

.field final synthetic val$calendarEventId:J

.field final synthetic val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3054
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iput-wide p3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$calendarEventId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3056
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$calendarEventId:J

    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeetingInvitation(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;JLandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3057
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 3058
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->val$calendarEventId:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->addSendMeetingMailRecord(JJ)V

    .line 3059
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$8;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendMeetingMail(J)V

    .line 3061
    .end local v0           #accountId:J
    :cond_0
    return-void
.end method
