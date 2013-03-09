.class Lcom/android/mms/util/ContactInfoCache$2;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactInfoCache;->startCacheRebuilder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactInfoCache;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    #calls: Lcom/android/mms/util/ContactInfoCache;->rebuildCache()V
    invoke-static {v0}, Lcom/android/mms/util/ContactInfoCache;->access$500(Lcom/android/mms/util/ContactInfoCache;)V

    .line 562
    return-void
.end method
