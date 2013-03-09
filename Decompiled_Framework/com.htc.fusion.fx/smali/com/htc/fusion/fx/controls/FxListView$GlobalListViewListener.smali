.class Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalListViewListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private disableGcForExternalAllocMethod:Ljava/lang/reflect/Method;

.field private sDisableGcCount:I


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    iput v2, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAllocMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "disableGcForExternalAlloc"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAllocMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "mode10"

    const-string v3, "Could not locate GC disable method on JVM. Proceeding."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "mode10"

    const-string v3, "Error attempting to load GC disable method on JVM."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v2, "mode10"

    const-string v3, "Unable to locate VMRuntime class."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableGcForExternalAlloc(Z)V
    .locals 6

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAllocMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAllocMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "mode10"

    const-string v2, "Error attempting to call GC disable method on JVM."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAlloc(Z)V

    iget v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_3
    iget v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    iget v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->reset()V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->disableGcForExternalAlloc(Z)V

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->sDisableGcCount:I

    return-void
.end method
