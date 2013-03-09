.class Lcom/google/android/voicesearch/RecognitionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$1;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity$1;->setResultCode(I)V

    .line 263
    return-void
.end method
