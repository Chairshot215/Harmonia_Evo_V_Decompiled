.class Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;
.super Landroid/os/AsyncTask;
.source "AccountRemoveReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/receiver/AccountRemoveReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountRemoveAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mContext:Landroid/content/Context;

.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field final synthetic this$0:Lcom/htc/store/receiver/AccountRemoveReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/store/receiver/AccountRemoveReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->this$0:Lcom/htc/store/receiver/AccountRemoveReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 34
    new-instance v0, Lcom/htc/store/module/PreferenceManager;

    iget-object v1, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->clearDeviceToken(Landroid/content/Context;)V

    .line 45
    iput-object v1, p0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->mContext:Landroid/content/Context;

    .line 46
    return-object v1
.end method
