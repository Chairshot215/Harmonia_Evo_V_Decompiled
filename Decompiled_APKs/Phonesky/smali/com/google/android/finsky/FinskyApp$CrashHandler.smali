.class Lcom/google/android/finsky/FinskyApp$CrashHandler;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/FinskyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter "file"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 235
    iput-object p2, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    .line 236
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 244
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method
