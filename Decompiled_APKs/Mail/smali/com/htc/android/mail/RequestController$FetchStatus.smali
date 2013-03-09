.class public Lcom/htc/android/mail/RequestController$FetchStatus;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchStatus"
.end annotation


# instance fields
.field private mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4317
    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$FetchStatus;->mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    return-void
.end method


# virtual methods
.method public fetchDone(J)V
    .locals 1
    .parameter "key"

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$FetchStatus;->mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->delete(J)V

    .line 4331
    return-void
.end method

.method public isNeedToFetch(J)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 4320
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchStatus size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/RequestController$FetchStatus;->mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v4}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/RequestController$FetchStatus;->mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v0

    .line 4322
    .local v0, fetching:Z
    if-nez v0, :cond_1

    .line 4323
    iget-object v2, p0, Lcom/htc/android/mail/RequestController$FetchStatus;->mStatus:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p1, p2, v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 4326
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
