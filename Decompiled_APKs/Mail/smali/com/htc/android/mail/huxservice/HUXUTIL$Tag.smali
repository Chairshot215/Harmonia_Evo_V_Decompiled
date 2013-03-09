.class public Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "tagId"
    .parameter "tagName"

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    .line 177
    iput-object p3, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v1, "tagName"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    .line 172
    const-string v1, "tagId"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->clone()Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    move-result-object v0

    return-object v0
.end method
