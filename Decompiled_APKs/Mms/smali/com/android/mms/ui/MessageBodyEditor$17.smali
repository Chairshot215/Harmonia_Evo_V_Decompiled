.class Lcom/android/mms/ui/MessageBodyEditor$17;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->showSlideActionList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2547
    packed-switch p2, :pswitch_data_0

    .line 2562
    :cond_0
    :goto_0
    return-void

    .line 2549
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->removeSlide(I)V

    .line 2551
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->needToClearSlide()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2400(Lcom/android/mms/ui/MessageBodyEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->discardSlide()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2500(Lcom/android/mms/ui/MessageBodyEditor;)V

    goto :goto_0

    .line 2559
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$17;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->showDurationDialog(I)V

    goto :goto_0

    .line 2547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
