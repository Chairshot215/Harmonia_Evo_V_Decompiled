.class public Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionListOnClickListener"
.end annotation


# instance fields
.field mContentType:Ljava/lang/String;

.field mPosition:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$1800(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MULTIPLE"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNSUPPORTED"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VCARD"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VCALENDAR"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOCATION"

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->convertToRelated(Z)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$600(Lcom/android/mms/ui/MessageBodyEditor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->showActionList(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$1900(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->showActionList(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$1900(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;I)V

    .line 2267
    const/4 v0, 0x1

    return v0
.end method
