.class Lcom/android/htccontacts/VoiceMailActivity$2;
.super Ljava/lang/Object;
.source "VoiceMailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/VoiceMailActivity;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/VoiceMailActivity;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/VoiceMailActivity;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/htccontacts/VoiceMailActivity$2;->this$0:Lcom/android/htccontacts/VoiceMailActivity;

    iput-object p2, p0, Lcom/android/htccontacts/VoiceMailActivity$2;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity$2;->this$0:Lcom/android/htccontacts/VoiceMailActivity;

    #getter for: Lcom/android/htccontacts/VoiceMailActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/htccontacts/VoiceMailActivity;->access$200(Lcom/android/htccontacts/VoiceMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoiceMailActivity"

    const-string v1, "Missing voicemail AlertDialog: CANCEL handler..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity$2;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method
