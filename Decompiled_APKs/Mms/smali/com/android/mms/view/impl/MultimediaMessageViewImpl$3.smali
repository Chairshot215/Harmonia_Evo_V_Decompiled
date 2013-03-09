.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;
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
    .line 424
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$200(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 427
    return-void
.end method
