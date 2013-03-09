.class Lcom/android/mms/ui/MessageBodyEditor$5;
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
.field private mBeforeLength:I

.field private mCharcountStart:I

.field private mInsertCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 2008
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v6, v0

    .line 2009
    .local v6, length:I
    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mBeforeLength:I

    if-ge v0, v6, :cond_0

    .line 2010
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxTextSize()I

    move-result v7

    .line 2011
    .local v7, maxSize:I
    if-le v6, v7, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09026c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2015
    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mCharcountStart:I

    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mCharcountStart:I

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mInsertCount:I

    add-int/2addr v2, v0

    const-string v3, ""

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2018
    .end local v7           #maxSize:I
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$702(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 2020
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 2023
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2025
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mBeforeLength:I

    .line 2026
    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mCharcountStart:I

    .line 2027
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2029
    iput p4, p0, Lcom/android/mms/ui/MessageBodyEditor$5;->mInsertCount:I

    .line 2030
    return-void
.end method
