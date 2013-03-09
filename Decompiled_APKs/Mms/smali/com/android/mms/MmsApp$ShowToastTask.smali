.class Lcom/android/mms/MmsApp$ShowToastTask;
.super Landroid/os/AsyncTask;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowToastTask"
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
.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/android/mms/MmsApp$ShowToastTask;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1121
    iput-object p2, p0, Lcom/android/mms/MmsApp$ShowToastTask;->mText:Ljava/lang/String;

    .line 1122
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/MmsApp$ShowToastTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "v"

    .prologue
    .line 1126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1117
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/MmsApp$ShowToastTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/mms/MmsApp$ShowToastTask;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1132
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/MmsApp$ShowToastTask;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1135
    :cond_0
    return-void
.end method
