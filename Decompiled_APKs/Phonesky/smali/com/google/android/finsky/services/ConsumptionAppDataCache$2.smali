.class Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;
.super Ljava/lang/Object;
.source "ConsumptionAppDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

.field final synthetic val$updateWidgets:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ConsumptionAppDataCache;Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    iput-object p2, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$data:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    iput-boolean p4, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$updateWidgets:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->this$0:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    iget-object v1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$data:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    iget-boolean v3, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;->val$updateWidgets:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V

    .line 148
    return-void
.end method
