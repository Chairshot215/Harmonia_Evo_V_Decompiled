.class public Lcom/android/mms/model/ContentRestrictionFactory;
.super Ljava/lang/Object;
.source "ContentRestrictionFactory.java"


# static fields
.field private static sContentRestriction:Lcom/android/mms/model/ContentRestriction;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getContentRestriction()Lcom/android/mms/model/ContentRestriction;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-nez v0, :cond_0

    .line 32
    const-class v1, Lcom/android/mms/model/ContentRestrictionFactory;

    monitor-enter v1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/ContentRestrictionFactory;->init(Landroid/content/Context;)V

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-class v1, Lcom/android/mms/model/ContentRestrictionFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "ContentRestrictionFactory"

    const-string v2, "Already initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return-void

    .line 50
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v0, p0}, Lcom/android/mms/model/CarrierContentRestriction;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
