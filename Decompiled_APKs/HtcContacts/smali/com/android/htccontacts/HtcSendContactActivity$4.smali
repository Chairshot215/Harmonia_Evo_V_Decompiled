.class Lcom/android/htccontacts/HtcSendContactActivity$4;
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
    .line 402
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$4;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$4;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->finish()V

    .line 405
    return-void
.end method
