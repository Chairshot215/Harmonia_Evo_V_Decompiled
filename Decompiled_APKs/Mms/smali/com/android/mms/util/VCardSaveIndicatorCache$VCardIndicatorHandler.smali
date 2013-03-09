.class final Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "VCardSaveIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardSaveIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VCardIndicatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    .line 457
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 458
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/util/VCardSaveIndicatorCache;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    .line 461
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 462
    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, cursor:Landroid/database/Cursor;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 471
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    #calls: Lcom/android/mms/util/VCardSaveIndicatorCache;->cacheVcardInfo()V
    invoke-static {v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$100(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    invoke-virtual {v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->updateSavedFile()V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x4e22
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
