.class Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager$1;
.super Ljava/lang/Thread;
.source "SNUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->loadCacheDBonThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager$1;->this$0:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager$1;->this$0:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->loadCacheInfoToCacheMap()V

    .line 579
    return-void
.end method
