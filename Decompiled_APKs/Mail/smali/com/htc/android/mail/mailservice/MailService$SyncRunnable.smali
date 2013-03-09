.class abstract Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private mAccountId:J

.field private mIsPushMail:Z

.field private mStartId:I


# direct methods
.method public constructor <init>(JIZ)V
    .locals 0
    .parameter "accountId"
    .parameter "startId"
    .parameter "isPushMail"

    .prologue
    .line 1367
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-wide p1, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mAccountId:J

    .line 1369
    iput p3, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mStartId:I

    .line 1370
    iput-boolean p4, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mIsPushMail:Z

    .line 1371
    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 1374
    iget-wide v0, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mAccountId:J

    return-wide v0
.end method

.method public getStartId()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mStartId:I

    return v0
.end method

.method public isPushMail()Z
    .locals 1

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->mIsPushMail:Z

    return v0
.end method

.method public abstract run()V
.end method
