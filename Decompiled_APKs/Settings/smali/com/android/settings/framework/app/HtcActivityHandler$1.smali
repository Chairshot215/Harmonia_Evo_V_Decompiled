.class Lcom/android/settings/framework/app/HtcActivityHandler$1;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$1;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$1;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;->onCreateInBackground(Landroid/os/Bundle;)V

    .line 357
    return-void
.end method
