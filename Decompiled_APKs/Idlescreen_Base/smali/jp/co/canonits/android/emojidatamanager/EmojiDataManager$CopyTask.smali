.class Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;
.super Landroid/os/AsyncTask;
.source "EmojiDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;
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
.field final synthetic this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;


# direct methods
.method private constructor <init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;-><init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 205
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 220
    :goto_0
    return-object v3

    .line 209
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v0, cv:Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$0(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI_COPY_DATA:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    const-string v3, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EmojiDataManager"

    const-string v4, "Exception occurred during copy data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
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

    invoke-virtual {p0, p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 225
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    const/4 v1, 0x0

    #setter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$1(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;Landroid/app/ProgressDialog;)V

    .line 229
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mListener:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$3(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mListener:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$3(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;->onCompletion(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$0(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$1(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;Landroid/app/ProgressDialog;)V

    .line 183
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "au\u7d75\u6587\u5b57\u521d\u671f\u5316\u51e6\u7406\u4e2d\u3067\u3059"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 191
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask$1;

    invoke-direct {v1, p0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask$1;-><init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 199
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 201
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->this$0:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;

    #getter for: Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Emoji initializing"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
