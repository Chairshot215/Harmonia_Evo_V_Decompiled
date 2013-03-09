.class Lcom/android/mms/ui/MessageBodyEditor$10;
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

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$contentType:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2308
    packed-switch p2, :pswitch_data_0

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 2310
    :pswitch_0
    const-string v0, "IMAGE"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2311
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->replaceImageVideo(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$2200(Lcom/android/mms/ui/MessageBodyEditor;IZ)V

    goto :goto_0

    .line 2313
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->replaceImageVideo(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$2200(Lcom/android/mms/ui/MessageBodyEditor;IZ)V

    goto :goto_0

    .line 2316
    :pswitch_1
    const-string v0, "IMAGE"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2317
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->removeImageVideo(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$2300(Lcom/android/mms/ui/MessageBodyEditor;IZ)V

    .line 2321
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->needToClearSlide()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2400(Lcom/android/mms/ui/MessageBodyEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->discardSlide()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$2500(Lcom/android/mms/ui/MessageBodyEditor;)V

    goto :goto_0

    .line 2319
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->removeImageVideo(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$2300(Lcom/android/mms/ui/MessageBodyEditor;IZ)V

    goto :goto_1

    .line 2329
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->preivewImageVideo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2100(Lcom/android/mms/ui/MessageBodyEditor;I)V

    goto :goto_0

    .line 2332
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$10;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->showDurationDialog(I)V

    goto :goto_0

    .line 2308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
