.class public Lcom/htc/android/mail/ulog/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private accountId:J

.field private mailReceivedNum:J

.field private mailSentNum:J

.field private recordTime:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailSentNum"
    .parameter "mailReceivedNum"
    .parameter "recordTime"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/htc/android/mail/ulog/Record;->accountId:J

    .line 13
    iput-wide p3, p0, Lcom/htc/android/mail/ulog/Record;->mailSentNum:J

    .line 14
    iput-wide p5, p0, Lcom/htc/android/mail/ulog/Record;->mailReceivedNum:J

    .line 15
    iput-wide p7, p0, Lcom/htc/android/mail/ulog/Record;->recordTime:J

    .line 16
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/mail/ulog/Record;->accountId:J

    return-wide v0
.end method

.method public getMailReceivedNum()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/htc/android/mail/ulog/Record;->mailReceivedNum:J

    return-wide v0
.end method

.method public getMailSentNum()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/htc/android/mail/ulog/Record;->mailSentNum:J

    return-wide v0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/htc/android/mail/ulog/Record;->recordTime:J

    return-wide v0
.end method

.method public setMailReceivedNum(J)V
    .locals 0
    .parameter "mailReceivedNum"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/htc/android/mail/ulog/Record;->mailReceivedNum:J

    .line 20
    return-void
.end method

.method public setMailSentNum(J)V
    .locals 0
    .parameter "mailSentNum"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/htc/android/mail/ulog/Record;->mailSentNum:J

    .line 24
    return-void
.end method

.method public setRecordTime(J)V
    .locals 0
    .parameter "recordTime"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/htc/android/mail/ulog/Record;->recordTime:J

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, str:Ljava/lang/StringBuffer;
    iget-wide v1, p0, Lcom/htc/android/mail/ulog/Record;->mailSentNum:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/ulog/Record;->mailReceivedNum:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/ulog/Record;->recordTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
