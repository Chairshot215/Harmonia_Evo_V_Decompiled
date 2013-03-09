.class Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;
.super Landroid/os/AsyncTask;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/compat/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
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
.field final synthetic this$0:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

.field final synthetic val$imiId:Ljava/lang/String;

.field final synthetic val$subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/compat/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->this$0:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    iput-object p2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 305
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->this$0:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    #getter for: Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;
    invoke-static {v0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->access$000(Lcom/htc/android/htcime/compat/SubtypeSwitcher;)Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->val$subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 305
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 321
    return-void
.end method
