.class Lcom/htc/android/mail/easclient/PeakTimeSetting$11;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/PeakTimeSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$11;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$11;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->removeDialog(I)V

    .line 474
    return-void
.end method
