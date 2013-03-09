.class Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadMailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;Lcom/htc/android/htcsetupwizard/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mail/accounts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id,_name,_desc"

    aput-object v5, v2, v3

    const-string v3, "_provider != \'Exchange\' AND _del != 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_0
    return-object v4
.end method
