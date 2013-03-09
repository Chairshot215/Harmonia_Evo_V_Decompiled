.class Lcom/android/settings/framework/app/HtcActivityHandler$4;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$4;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$4;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;->onRestartInBackground()V

    .line 509
    return-void
.end method
