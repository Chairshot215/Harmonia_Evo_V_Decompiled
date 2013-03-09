.class Lcom/android/mms/ui/ComposeMessageActivity$84;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15047
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 15049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v6

    .line 15050
    .local v6, edit:Landroid/widget/EditText;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->isEmptySlide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15052
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->getFocusEdit()Landroid/widget/EditText;

    move-result-object v6

    .line 15054
    :cond_0
    if-eqz v6, :cond_1

    .line 15055
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$84;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 15059
    .local v8, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "text"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15060
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    .line 15061
    .local v9, start:I
    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    .line 15062
    .local v7, end:I
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 15065
    .end local v3           #str:Ljava/lang/String;
    .end local v7           #end:I
    .end local v8           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #start:I
    :cond_1
    return-void
.end method
