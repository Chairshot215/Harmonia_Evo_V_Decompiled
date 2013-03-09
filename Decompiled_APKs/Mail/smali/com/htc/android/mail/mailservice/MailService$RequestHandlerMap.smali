.class Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
.super Ljava/lang/Object;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandlerMap"
.end annotation


# instance fields
.field private mRequestSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 1
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;-><init>(Lcom/htc/android/mail/mailservice/MailService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized put(ILandroid/os/Handler;)V
    .locals 4
    .parameter "startId"
    .parameter "handler"

    .prologue
    .line 1307
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1309
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    if-nez v0, :cond_1

    .line 1310
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1312
    .restart local v0       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1313
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    monitor-exit p0

    return-void

    .line 1307
    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(ILandroid/os/Handler;)V
    .locals 4
    .parameter "startId"
    .parameter "handler"

    .prologue
    .line 1317
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    if-nez v0, :cond_2

    .line 1324
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1320
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1321
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1317
    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size(I)I
    .locals 2
    .parameter "startId"

    .prologue
    .line 1327
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->mRequestSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    if-nez v0, :cond_0

    .line 1329
    const/4 v1, 0x0

    .line 1331
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1327
    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
