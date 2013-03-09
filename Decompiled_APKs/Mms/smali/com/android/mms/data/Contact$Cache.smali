.class Lcom/android/mms/data/Contact$Cache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/Contact$Cache;


# instance fields
.field private final mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    .line 381
    iput-object p1, p0, Lcom/android/mms/data/Contact$Cache;->mContext:Landroid/content/Context;

    .line 382
    return-void
.end method

.method static dump()V
    .locals 5

    .prologue
    .line 393
    sget-object v3, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v3

    .line 394
    :try_start_0
    const-string v2, "Contact"

    const-string v4, "**** Contact cache dump ****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v2, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 396
    .local v0, c:Lcom/android/mms/data/Contact;
    const-string v2, "Contact"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 4
    .parameter "number"

    .prologue
    .line 413
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-static {p0}, Lcom/android/mms/data/Contact$Cache;->getEmail(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 416
    :cond_0
    sget-object v3, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v3

    .line 417
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 428
    .local v0, c:Lcom/android/mms/data/Contact;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 433
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 432
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static getContacts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    sget-object v1, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v1

    .line 460
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Contact$Cache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getEmail(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 4
    .parameter "number"

    .prologue
    .line 402
    sget-object v3, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v3

    .line 403
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 404
    .local v0, c:Lcom/android/mms/data/Contact;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    monitor-exit v3

    .line 408
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 409
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getInstance()Lcom/android/mms/data/Contact$Cache;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    return-object v0
.end method

.method static getNumbers()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 448
    sget-object v6, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v6

    .line 449
    :try_start_0
    sget-object v5, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 450
    .local v4, numbers:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 451
    .local v1, i:I
    sget-object v5, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 452
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 454
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    monitor-exit v6

    return-object v4

    .line 455
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 385
    new-instance v0, Lcom/android/mms/data/Contact$Cache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$Cache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    .line 386
    return-void
.end method

.method static put(Lcom/android/mms/data/Contact;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 437
    sget-object v1, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    monitor-enter v1

    .line 440
    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact$Cache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Contact$Cache;->sInstance:Lcom/android/mms/data/Contact$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    return-void
.end method
