.class Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;
.super Ljava/lang/Object;
.source "HtcSaveToContactsDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/HtcSaveToContactsDialogView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;->this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;->this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    #getter for: Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    invoke-static {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->access$000(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;->this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    #getter for: Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    invoke-static {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->access$000(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;->onClick()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;->this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    #getter for: Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
    invoke-static {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->access$100(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;->this$0:Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    #getter for: Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
    invoke-static {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->access$100(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;->onClick()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0e004b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
