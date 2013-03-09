.class public Lcom/android/htcdialer/search/DialerPhone;
.super Ljava/lang/Object;
.source "DialerPhone.java"


# instance fields
.field public id:J

.field public isPrimary:Z

.field public number:Ljava/lang/String;

.field public number_group_id:Ljava/lang/String;

.field public pureNumber:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JZLjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "isPrimary"
    .parameter "number"
    .parameter "type"
    .parameter "number_group_id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/DialerPhone;->id:J

    .line 32
    iput-boolean v3, p0, Lcom/android/htcdialer/search/DialerPhone;->isPrimary:Z

    .line 33
    iput-object v2, p0, Lcom/android/htcdialer/search/DialerPhone;->number:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/android/htcdialer/search/DialerPhone;->pureNumber:Ljava/lang/String;

    .line 35
    iput v3, p0, Lcom/android/htcdialer/search/DialerPhone;->type:I

    .line 36
    iput-object v2, p0, Lcom/android/htcdialer/search/DialerPhone;->number_group_id:Ljava/lang/String;

    .line 39
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerPhone;->id:J

    .line 40
    iput-boolean p3, p0, Lcom/android/htcdialer/search/DialerPhone;->isPrimary:Z

    .line 41
    iput-object p4, p0, Lcom/android/htcdialer/search/DialerPhone;->number:Ljava/lang/String;

    .line 42
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerPhone;->pureNumber:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/android/htcdialer/search/DialerPhone;->type:I

    .line 44
    iput-object p6, p0, Lcom/android/htcdialer/search/DialerPhone;->number_group_id:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getPureNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerPhone;->pureNumber:Ljava/lang/String;

    return-object v0
.end method
