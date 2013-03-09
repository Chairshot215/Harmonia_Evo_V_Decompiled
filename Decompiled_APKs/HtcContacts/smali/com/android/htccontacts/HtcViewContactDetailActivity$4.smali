.class Lcom/android/htccontacts/HtcViewContactDetailActivity$4;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->createSetDialog()Landroid/app/Dialog;
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
    .line 3762
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$4;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$4;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateSendVoicemail()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1000(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3765
    return-void
.end method
