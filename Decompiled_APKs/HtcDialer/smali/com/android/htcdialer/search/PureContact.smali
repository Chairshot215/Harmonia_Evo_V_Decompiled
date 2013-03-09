.class public Lcom/android/htcdialer/search/PureContact;
.super Ljava/lang/Object;
.source "PureContact.java"


# instance fields
.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "name"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/PureContact;->id:J

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/PureContact;->name:Ljava/lang/String;

    .line 8
    iput-wide p1, p0, Lcom/android/htcdialer/search/PureContact;->id:J

    .line 9
    iput-object p3, p0, Lcom/android/htcdialer/search/PureContact;->name:Ljava/lang/String;

    .line 10
    return-void
.end method
