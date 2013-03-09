.class Lcom/google/android/voicesearch/HelpDialog$6;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 216
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-static {v4}, Lcom/google/android/voicesearch/HelpDialog;->access$500(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/voicesearch/GservicesHelper;->getHelpVideoUrl()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, videoUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a07f9

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 254
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 226
    .local v2, showVideo:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    const-string v4, "http://www.youtube.com/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 233
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.google.android.youtube"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 236
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v4}, Lcom/google/android/voicesearch/HelpDialog;->access$600(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->videoLaunched()V

    .line 244
    :try_start_1
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "HelpDialog"

    const-string v5, "YouTube package found, but no activity available"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$6;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
