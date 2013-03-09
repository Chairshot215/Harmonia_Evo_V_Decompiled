.class Lcom/android/browser/Controller$5;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->getVisitedHistory(Landroid/webkit/ValueCallback;)V
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$5;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 963
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$5;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1
    .parameter "unused"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 963
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$5;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute([Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/browser/Controller$5;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 971
    return-void
.end method
