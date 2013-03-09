.class Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;
.super Ljava/lang/Object;
.source "MixedMultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->inflateMmsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 543
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    iput-boolean v2, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsLongClick:Z

    .line 544
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    sget-object v1, Lcom/android/mms/view/Event;->CLICKED_PLAYBACK_EVENT:Lcom/android/mms/view/Event;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->fireEvent(Lcom/android/mms/view/Event;)V

    .line 545
    return v2
.end method
