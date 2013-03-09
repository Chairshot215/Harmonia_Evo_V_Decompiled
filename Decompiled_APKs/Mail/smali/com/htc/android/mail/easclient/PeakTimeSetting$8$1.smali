.class Lcom/htc/android/mail/easclient/PeakTimeSetting$8$1;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/PeakTimeSetting$8;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/PeakTimeSetting$8;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8$1;->this$1:Lcom/htc/android/mail/easclient/PeakTimeSetting$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8$1;->this$1:Lcom/htc/android/mail/easclient/PeakTimeSetting$8;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->showDialog(I)V

    .line 424
    return-void
.end method
