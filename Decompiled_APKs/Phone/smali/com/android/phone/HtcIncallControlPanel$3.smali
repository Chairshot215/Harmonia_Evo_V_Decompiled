.class Lcom/android/phone/HtcIncallControlPanel$3;
.super Ljava/lang/Object;
.source "HtcIncallControlPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcIncallControlPanel;->getAudioSrcDialog(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcIncallControlPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcIncallControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel$3;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel$3;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 943
    return-void
.end method
