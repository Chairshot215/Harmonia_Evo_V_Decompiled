.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;
.super Lcom/google/android/gm/provider/DelayedTaskHandler;
.source "GmailWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;I)V
    .locals 1
    .parameter
    .parameter "refreshDelay"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;->this$0:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    .line 303
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/provider/DelayedTaskHandler;-><init>(Landroid/os/Looper;I)V

    .line 304
    return-void
.end method


# virtual methods
.method protected performTask()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;->this$0:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    #getter for: Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$100(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;->this$0:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    #getter for: Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$100(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 312
    :cond_0
    return-void
.end method
