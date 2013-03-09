.class Lcom/android/htccontacts/HtcSendMultipleContactActivity$4;
.super Ljava/lang/Object;
.source "HtcSendMultipleContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendMultipleContactActivity;->displaySendContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$4;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

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
    const/4 v0, 0x1

    .line 214
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$4;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->finish()V

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method
