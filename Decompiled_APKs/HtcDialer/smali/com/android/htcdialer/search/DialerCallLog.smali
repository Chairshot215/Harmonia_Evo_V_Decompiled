.class public Lcom/android/htcdialer/search/DialerCallLog;
.super Ljava/lang/Object;
.source "DialerCallLog.java"


# instance fields
.field public contact:Lcom/android/htcdialer/search/DialerContact;

.field public contact_id:J

.field public count:I

.field public date:J

.field public id:J

.field public number:Ljava/lang/String;

.field public pureNumber:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JJIILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "date"
    .parameter "count"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->id:J

    .line 38
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    .line 42
    iput v3, p0, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    .line 46
    iput v3, p0, Lcom/android/htcdialer/search/DialerCallLog;->type:I

    .line 50
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->pureNumber:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    .line 60
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact_id:J

    .line 72
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerCallLog;->id:J

    .line 73
    iput-wide p3, p0, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    .line 74
    iput p5, p0, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    .line 75
    iput p6, p0, Lcom/android/htcdialer/search/DialerCallLog;->type:I

    .line 76
    iput-object p7, p0, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    .line 77
    invoke-static {p7}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->pureNumber:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(JJIILjava/lang/String;J)V
    .locals 4
    .parameter "id"
    .parameter "date"
    .parameter "count"
    .parameter "type"
    .parameter "number"
    .parameter "contact_id"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->id:J

    .line 38
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    .line 42
    iput v3, p0, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    .line 46
    iput v3, p0, Lcom/android/htcdialer/search/DialerCallLog;->type:I

    .line 50
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->pureNumber:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    .line 60
    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact_id:J

    .line 81
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerCallLog;->id:J

    .line 82
    iput-wide p3, p0, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    .line 83
    iput p5, p0, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    .line 84
    iput p6, p0, Lcom/android/htcdialer/search/DialerCallLog;->type:I

    .line 85
    iput-object p7, p0, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    .line 86
    invoke-static {p7}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerCallLog;->pureNumber:Ljava/lang/String;

    .line 87
    iput-wide p8, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact_id:J

    .line 88
    return-void
.end method


# virtual methods
.method public getCallLogPhoneId()J
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    iget-object v2, v2, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/DialerPhone;

    .line 93
    .local v1, phone:Lcom/android/htcdialer/search/DialerPhone;
    iget-object v2, p0, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/htcdialer/search/DialerPhone;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-wide v2, v1, Lcom/android/htcdialer/search/DialerPhone;->id:J

    .line 98
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #phone:Lcom/android/htcdialer/search/DialerPhone;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
