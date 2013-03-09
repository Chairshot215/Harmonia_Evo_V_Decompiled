.class Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable$1;
.super Ljava/lang/Object;
.source "SystemCrashChecker.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;


# direct methods
.method constructor <init>(Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable$1;->this$1:Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dbox_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
