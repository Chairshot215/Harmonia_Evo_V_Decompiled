.class Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;
.super Landroid/os/AsyncTask;
.source "EmojiInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/canonits/android/emojinit/EmojiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/canonits/android/emojinit/EmojiInit;


# direct methods
.method private constructor <init>(Ljp/co/canonits/android/emojinit/EmojiInit;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;->this$0:Ljp/co/canonits/android/emojinit/EmojiInit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/co/canonits/android/emojinit/EmojiInit;Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;-><init>(Ljp/co/canonits/android/emojinit/EmojiInit;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 90
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 105
    :goto_0
    return-object v3

    .line 94
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, cv:Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;->this$0:Ljp/co/canonits/android/emojinit/EmojiInit;

    #getter for: Ljp/co/canonits/android/emojinit/EmojiInit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$0(Ljp/co/canonits/android/emojinit/EmojiInit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI_COPY_DATA:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    const-string v3, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EmojiInit"

    const-string v4, "Exception occurred during copy data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 132
    invoke-static {v1}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$1(Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;)V

    .line 133
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$2()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$2()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_0
    invoke-static {v1}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$3(Landroid/app/ProgressDialog;)V

    .line 138
    invoke-static {v1}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$5(Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;)V

    .line 140
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {v2}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$1(Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;)V

    .line 112
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$2()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$2()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    :cond_0
    invoke-static {v2}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$3(Landroid/app/ProgressDialog;)V

    .line 118
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$4()Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$4()Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;->onCompletion(Z)V

    .line 123
    :cond_1
    invoke-static {v2}, Ljp/co/canonits/android/emojinit/EmojiInit;->access$5(Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;)V

    .line 126
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
