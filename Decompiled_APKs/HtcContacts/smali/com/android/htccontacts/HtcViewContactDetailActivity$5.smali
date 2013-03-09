.class Lcom/android/htccontacts/HtcViewContactDetailActivity$5;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->createSetVIPDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$5;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3786
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$5;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateVIP()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3787
    return-void
.end method
