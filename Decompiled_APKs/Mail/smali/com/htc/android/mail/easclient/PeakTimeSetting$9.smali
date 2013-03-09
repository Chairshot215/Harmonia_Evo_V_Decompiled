.class Lcom/htc/android/mail/easclient/PeakTimeSetting$9;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 439
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$9;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$9;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->showDialog(I)V

    .line 442
    return-void
.end method
