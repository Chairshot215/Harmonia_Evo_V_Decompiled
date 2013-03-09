.class Lcom/google/android/gm/ShortcutEnablerService$2;
.super Landroid/os/AsyncTask;
.source "ShortcutEnablerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ShortcutEnablerService;->enableShortcutAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ShortcutEnablerService;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ShortcutEnablerService;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gm/ShortcutEnablerService$2;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ShortcutEnablerService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$2;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->enableLabelShortcutActivity(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ShortcutEnablerService$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$2;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #calls: Lcom/google/android/gm/ShortcutEnablerService;->stopService()V
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$300(Lcom/google/android/gm/ShortcutEnablerService;)V

    .line 101
    return-void
.end method
