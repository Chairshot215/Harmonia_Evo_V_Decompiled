.class Lcom/android/mms/ui/MessageBodyEditor$11;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->showActionList(Ljava/lang/String;I)V
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
    .line 2346
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2348
    packed-switch p2, :pswitch_data_0

    .line 2369
    :cond_0
    :goto_0
    return-void

    .line 2350
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->replaceAudio(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2600(Lcom/android/mms/ui/MessageBodyEditor;I)V

    goto :goto_0

    .line 2353
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->removeAudio(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2700(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2355
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->needToClearSlide()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2400(Lcom/android/mms/ui/MessageBodyEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->discardSlide()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2500(Lcom/android/mms/ui/MessageBodyEditor;)V

    goto :goto_0

    .line 2363
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->playAudio(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2000(Lcom/android/mms/ui/MessageBodyEditor;I)V

    goto :goto_0

    .line 2366
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$11;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->showDurationDialog(I)V

    goto :goto_0

    .line 2348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
