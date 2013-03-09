.class Lcom/android/htccontacts/HtcSendMultipleContactActivity$3;
.super Ljava/lang/Object;
.source "HtcSendMultipleContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 206
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$3;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$3;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->finish()V

    .line 209
    return-void
.end method
