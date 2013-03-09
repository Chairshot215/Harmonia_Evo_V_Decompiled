.class Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;
.super Ljava/lang/Object;
.source "ConsumptionAppDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

.field final synthetic val$backendId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ConsumptionAppDataCache;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    iput-object p2, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$backendId:I

    iput-object p4, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    iget-object v1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$backendId:I

    iget-object v3, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;->val$data:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    return-void
.end method
