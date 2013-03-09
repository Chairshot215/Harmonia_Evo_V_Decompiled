.class Lcom/htc/android/htcime/deprecated/voice/VoiceInput$2;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->cancel()V

    .line 462
    return-void
.end method
