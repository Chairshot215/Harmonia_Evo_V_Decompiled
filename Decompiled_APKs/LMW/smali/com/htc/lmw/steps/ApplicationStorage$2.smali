.class Lcom/htc/lmw/steps/ApplicationStorage$2;
.super Ljava/lang/Object;
.source "ApplicationStorage.java"

# interfaces
.implements Lcom/htc/lmw/ExternalStorageObserver$IStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/ApplicationStorage;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/ApplicationStorage;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/ApplicationStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/lmw/steps/ApplicationStorage$2;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/content/Intent;)V
    .locals 1
    .parameter "currentState"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage$2;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    #calls: Lcom/htc/lmw/steps/ApplicationStorage;->updateMoveToSdButton()V
    invoke-static {v0}, Lcom/htc/lmw/steps/ApplicationStorage;->access$200(Lcom/htc/lmw/steps/ApplicationStorage;)V

    .line 96
    return-void
.end method
