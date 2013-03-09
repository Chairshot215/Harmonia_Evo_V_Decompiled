.class final Lcom/android/mms/util/VCardSaveIndicatorCache$1;
.super Ljava/lang/Object;
.source "VCardSaveIndicatorCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardSaveIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v0

    #calls: Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInUIthread()V
    invoke-static {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$000(Lcom/android/mms/util/VCardSaveIndicatorCache;)V

    .line 334
    return-void
.end method
