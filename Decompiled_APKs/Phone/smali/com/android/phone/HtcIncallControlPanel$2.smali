.class Lcom/android/phone/HtcIncallControlPanel$2;
.super Ljava/lang/Object;
.source "HtcIncallControlPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 923
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel$2;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 928
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel$2;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->access$302(Lcom/android/phone/HtcIncallControlPanel;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 930
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel$2;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 932
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
