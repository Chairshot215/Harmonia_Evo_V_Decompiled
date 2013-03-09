.class Lcom/android/mms/ui/MessageBodyEditor$4;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$4;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1948
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1949
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$4;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->convertToRelated(Z)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$600(Lcom/android/mms/ui/MessageBodyEditor;Z)Z

    .line 1953
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1954
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$4;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 1956
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1959
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1962
    return-void
.end method
