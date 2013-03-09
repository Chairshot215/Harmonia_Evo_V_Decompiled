.class Lcom/android/htccontacts/HtcViewUnknownContactActivity$2;
.super Ljava/lang/Object;
.source "HtcViewUnknownContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewUnknownContactActivity;->addToContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 311
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 312
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$202(Lcom/android/htccontacts/HtcViewUnknownContactActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 313
    return-void
.end method
