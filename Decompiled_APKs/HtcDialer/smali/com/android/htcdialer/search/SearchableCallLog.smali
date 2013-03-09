.class public Lcom/android/htcdialer/search/SearchableCallLog;
.super Ljava/lang/Object;
.source "SearchableCallLog.java"


# static fields
.field private static final BEARER_TYPE_OFFSET:I = 0x100


# instance fields
.field public bearerType:I

.field public cityId:Ljava/lang/String;

.field public cname:Ljava/lang/String;

.field public contactId:J

.field public count:I

.field public date:J

.field public id:J

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "contactId"
    .parameter "date"
    .parameter "count"
    .parameter "type"
    .parameter "number"
    .parameter "cityId"
    .parameter "cname"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 10
    iput-wide v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    .line 11
    iput-wide v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    .line 13
    iput v2, p0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 14
    iput v2, p0, Lcom/android/htcdialer/search/SearchableCallLog;->type:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->bearerType:I

    .line 19
    iput-object v3, p0, Lcom/android/htcdialer/search/SearchableCallLog;->cityId:Ljava/lang/String;

    .line 20
    iput-object v3, p0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    .line 25
    iput-wide p1, p0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 26
    iput-wide p3, p0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    .line 27
    iput-wide p5, p0, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    .line 28
    iput p7, p0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 29
    rem-int/lit16 v0, p8, 0x100

    iput v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->type:I

    .line 30
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p9, ""

    .end local p9
    :cond_0
    iput-object p9, p0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    .line 31
    div-int/lit16 v0, p8, 0x100

    iput v0, p0, Lcom/android/htcdialer/search/SearchableCallLog;->bearerType:I

    .line 32
    iput-object p10, p0, Lcom/android/htcdialer/search/SearchableCallLog;->cityId:Ljava/lang/String;

    .line 33
    iput-object p11, p0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    .line 34
    return-void
.end method
