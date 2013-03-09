.class Lcom/htc/android/htcime/tools/SipRecorder$1;
.super Ljava/lang/Object;
.source "SipRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/SipRecorder;->editTextSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/SipRecorder;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/SipRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/android/htcime/tools/SipRecorder$1;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder$1;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    #getter for: Lcom/htc/android/htcime/tools/SipRecorder;->mSRDoneBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/htcime/tools/SipRecorder;->access$000(Lcom/htc/android/htcime/tools/SipRecorder;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder$1;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/SipRecorder;->sipRecorderDone()V

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder$1;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/SipRecorder;->finish()V

    .line 64
    :cond_0
    return-void
.end method
