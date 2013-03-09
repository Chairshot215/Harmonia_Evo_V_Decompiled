.class public Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextLongClickListener"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter
    .parameter "pos"

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->mPosition:I

    .line 2229
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2232
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2236
    .local v0, clipboard:Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$1700(Lcom/android/mms/ui/MessageBodyEditor;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2238
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;->mPosition:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->showSlideActionList(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$1600(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2239
    const/4 v1, 0x1

    .line 2242
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
