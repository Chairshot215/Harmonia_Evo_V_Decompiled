.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->enableImageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-boolean v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iput-boolean v1, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsLongClick:Z

    .line 779
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    sget-object v1, Lcom/android/mms/view/Event;->CLICKED_PLAYBACK_EVENT:Lcom/android/mms/view/Event;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->fireEvent(Lcom/android/mms/view/Event;)V

    .line 780
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->onButtonClick(Landroid/view/View;)V

    .line 784
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iput-boolean v1, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    goto :goto_0
.end method
