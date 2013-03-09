.class Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditableMediaViewFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/ui/MessageBodyEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)Lcom/android/mms/view/EditableMediaView;
    .locals 6
    .parameter "context"
    .parameter "media"

    .prologue
    .line 184
    const-string v3, "MessageBodyEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EditableMediaViewFactory.create()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 186
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 190
    .local v2, mediaView:Lcom/android/mms/view/EditableMediaView;
    const v3, 0x7f03000a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #mediaView:Lcom/android/mms/view/EditableMediaView;
    check-cast v2, Lcom/android/mms/view/EditableMediaView;

    .line 192
    .restart local v2       #mediaView:Lcom/android/mms/view/EditableMediaView;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/mms/view/EditableMediaView;->setContentType(Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 238
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;-><init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/android/mms/view/EditableMediaView;->setOnPreviewListener(Lcom/android/mms/view/EditableMediaView$OnPreviewListener;)V

    .line 364
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$2;-><init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;)V

    invoke-interface {v2, v3}, Lcom/android/mms/view/EditableMediaView;->setOnRemoveListener(Lcom/android/mms/view/EditableMediaView$OnRemoveListener;)V

    .line 371
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;-><init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;)V

    invoke-interface {v2, v3}, Lcom/android/mms/view/EditableMediaView;->setOnReplaceListener(Lcom/android/mms/view/EditableMediaView$OnReplaceListener;)V

    .line 392
    :cond_2
    return-object v2

    .line 194
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    const v3, 0x7f090140

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_4
    invoke-interface {v2, v0}, Lcom/android/mms/view/EditableMediaView;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0           #filename:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const v3, 0x7f090141

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/mms/view/EditableMediaView;->setContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
