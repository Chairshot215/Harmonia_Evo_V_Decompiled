.class Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

.field final synthetic val$this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15523
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;->val$this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 15525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mCalculateTimeListener:Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->access$14400(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;->onCalculateTime()V

    .line 15526
    return-void
.end method
