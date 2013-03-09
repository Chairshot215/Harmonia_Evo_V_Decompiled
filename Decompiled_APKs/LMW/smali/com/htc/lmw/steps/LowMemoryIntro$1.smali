.class Lcom/htc/lmw/steps/LowMemoryIntro$1;
.super Ljava/lang/Object;
.source "LowMemoryIntro.java"

# interfaces
.implements Lcom/htc/lmw/ExternalStorageObserver$IStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/LowMemoryIntro;->registerStorageProgressUpdater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/LowMemoryIntro;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/LowMemoryIntro;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/lmw/steps/LowMemoryIntro$1;->this$0:Lcom/htc/lmw/steps/LowMemoryIntro;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/content/Intent;)V
    .locals 0
    .parameter "currentState"

    .prologue
    .line 105
    return-void
.end method
