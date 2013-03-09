.class Lcom/android/mms/MmsApp$InitCacheTask;
.super Landroid/os/AsyncTask;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCacheTask"
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
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/mms/MmsApp$InitCacheTask;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1712
    iput-object p2, p0, Lcom/android/mms/MmsApp$InitCacheTask;->mContext:Landroid/content/Context;

    .line 1713
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1708
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/MmsApp$InitCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1717
    const-string v0, "Messaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const-string v0, "Messaging"

    const-string v1, "InitCacheTask.doInBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp$InitCacheTask;->init()V

    .line 1721
    const/4 v0, 0x0

    return-object v0
.end method
