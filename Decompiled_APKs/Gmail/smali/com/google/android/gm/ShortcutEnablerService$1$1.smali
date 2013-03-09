.class Lcom/google/android/gm/ShortcutEnablerService$1$1;
.super Landroid/database/DataSetObserver;
.source "ShortcutEnablerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ShortcutEnablerService$1;->onPostExecute(Lcom/google/android/gm/provider/LabelList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/ShortcutEnablerService$1;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ShortcutEnablerService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/gm/ShortcutEnablerService$1$1;->this$1:Lcom/google/android/gm/ShortcutEnablerService$1;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1$1;->this$1:Lcom/google/android/gm/ShortcutEnablerService$1;

    iget-object v0, v0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1$1;->this$1:Lcom/google/android/gm/ShortcutEnablerService$1;

    iget-object v0, v0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #calls: Lcom/google/android/gm/ShortcutEnablerService;->stopService()V
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$300(Lcom/google/android/gm/ShortcutEnablerService;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1$1;->this$1:Lcom/google/android/gm/ShortcutEnablerService$1;

    iget-object v0, v0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$100(Lcom/google/android/gm/ShortcutEnablerService;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1$1;->this$1:Lcom/google/android/gm/ShortcutEnablerService$1;

    iget-object v0, v0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #calls: Lcom/google/android/gm/ShortcutEnablerService;->enableShortcutAndFinish()V
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$400(Lcom/google/android/gm/ShortcutEnablerService;)V

    goto :goto_0
.end method
