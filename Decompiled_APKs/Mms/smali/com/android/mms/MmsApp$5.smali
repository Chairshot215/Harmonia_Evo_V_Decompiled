.class final Lcom/android/mms/MmsApp$5;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->syncCmasServiceTable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3257
    iput-boolean p1, p0, Lcom/android/mms/MmsApp$5;->val$force:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3259
    sget-object v1, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    monitor-enter v1

    .line 3260
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/MmsApp$5;->val$force:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-nez v0, :cond_1

    .line 3261
    :cond_0
    #calls: Lcom/android/mms/MmsApp;->syncCmasServiceTable()V
    invoke-static {}, Lcom/android/mms/MmsApp;->access$400()V

    .line 3263
    :cond_1
    monitor-exit v1

    .line 3264
    return-void

    .line 3263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
