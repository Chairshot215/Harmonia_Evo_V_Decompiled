.class Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
.super Ljava/lang/Object;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIds"
.end annotation


# instance fields
.field private mServiceIdArray:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 1
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->mServiceIdArray:Landroid/util/SparseIntArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;-><init>(Lcom/htc/android/mail/mailservice/MailService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add serviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->mServiceIdArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAndTryStop(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 1294
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove statrtId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->mServiceIdArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1296
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->mServiceIdArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1297
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop Self: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/MailService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    :cond_2
    monitor-exit p0

    return-void

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 1290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->mServiceIdArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
