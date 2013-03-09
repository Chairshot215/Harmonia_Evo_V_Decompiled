.class Lcom/google/android/tts/GeneralSettingsFragment$2;
.super Landroid/os/Handler;
.source "GeneralSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/GeneralSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GeneralSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment$2;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment$2;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #calls: Lcom/google/android/tts/GeneralSettingsFragment;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/tts/GeneralSettingsFragment;->access$100(Lcom/google/android/tts/GeneralSettingsFragment;Ljava/lang/String;)V

    .line 63
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment$2;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #calls: Lcom/google/android/tts/GeneralSettingsFragment;->showError()V
    invoke-static {v1}, Lcom/google/android/tts/GeneralSettingsFragment;->access$200(Lcom/google/android/tts/GeneralSettingsFragment;)V

    goto :goto_0
.end method
