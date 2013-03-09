.class Lcom/android/htccontacts/HtcSendContactActivity$3;
.super Ljava/lang/Object;
.source "HtcSendContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$3;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$3;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->doSend()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1000(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 398
    return-void
.end method
