.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
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
    .line 896
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setPressed(Z)V

    .line 899
    return-void
.end method
