.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 787
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 789
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    .line 794
    :goto_0
    return v2

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iput-boolean v2, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    goto :goto_0
.end method
