.class Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;
.super Ljava/lang/Object;
.source "UpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunner"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;


# direct methods
.method public constructor <init>(Lcom/android/providers/htcCheckin/UpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "i"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->mContext:Landroid/content/Context;

    .line 360
    iput-object p3, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->intent:Landroid/content/Intent;

    .line 361
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->intent:Landroid/content/Intent;

    const-string v1, "multiplePackage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->intent:Landroid/content/Intent;

    const-string v2, "multiplePackage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->installMultipleUpdate(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->installUpdate(Landroid/content/Context;Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$900(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method
