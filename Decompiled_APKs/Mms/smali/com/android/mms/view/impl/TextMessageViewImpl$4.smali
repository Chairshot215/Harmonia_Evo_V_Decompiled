.class Lcom/android/mms/view/impl/TextMessageViewImpl$4;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$4;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$800(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 704
    return-void
.end method
