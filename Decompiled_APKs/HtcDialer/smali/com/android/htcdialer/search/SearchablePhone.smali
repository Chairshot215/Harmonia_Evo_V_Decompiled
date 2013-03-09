.class public Lcom/android/htcdialer/search/SearchablePhone;
.super Ljava/lang/Object;
.source "SearchablePhone.java"


# instance fields
.field public id:J

.field public number:Ljava/lang/String;

.field public number_group_id:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "type"
    .parameter "number"
    .parameter "number_group_id"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    .line 8
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    .line 9
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchablePhone;->number_group_id:Ljava/lang/String;

    .line 13
    iput-wide p1, p0, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    .line 14
    iput p3, p0, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    .line 15
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p4, v0

    .end local p4
    :cond_0
    iput-object p4, p0, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/android/htcdialer/search/SearchablePhone;->number_group_id:Ljava/lang/String;

    .line 17
    return-void
.end method
