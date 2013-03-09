.class Lcom/google/android/gm/provider/MessageLabelRecord;
.super Ljava/lang/Object;
.source "MessageLabelRecord.java"


# instance fields
.field private final mDateReceived:Ljava/lang/Long;

.field private final mJoinedLabelIds:Ljava/lang/String;

.field private final mMessageId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "labelString"
    .parameter "messageId"
    .parameter "dateReceived"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mMessageId:J

    .line 40
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "labelString"
    .parameter "messageId"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mMessageId:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    .line 28
    return-void
.end method


# virtual methods
.method getDateReceived()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    return-object v0
.end method

.method getLabelIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->COMMA_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, labelIds:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 47
    .end local v0           #labelIds:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method getMessageId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/gm/provider/MessageLabelRecord;->mMessageId:J

    return-wide v0
.end method
