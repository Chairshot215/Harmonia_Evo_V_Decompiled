.class Lcom/android/browser/Preloader$PreloaderSession$1;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Preloader$PreloaderSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Preloader$PreloaderSession;


# direct methods
.method constructor <init>(Lcom/android/browser/Preloader$PreloaderSession;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/browser/Preloader$PreloaderSession$1;->this$1:Lcom/android/browser/Preloader$PreloaderSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "browser.preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload session timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Preloader$PreloaderSession$1;->this$1:Lcom/android/browser/Preloader$PreloaderSession;

    #getter for: Lcom/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/Preloader$PreloaderSession;->access$000(Lcom/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/browser/Preloader$PreloaderSession$1;->this$1:Lcom/android/browser/Preloader$PreloaderSession;

    iget-object v0, v0, Lcom/android/browser/Preloader$PreloaderSession;->this$0:Lcom/android/browser/Preloader;

    iget-object v1, p0, Lcom/android/browser/Preloader$PreloaderSession$1;->this$1:Lcom/android/browser/Preloader$PreloaderSession;

    #getter for: Lcom/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/Preloader$PreloaderSession;->access$000(Lcom/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Preloader;->discardPreload(Ljava/lang/String;)V

    .line 149
    return-void
.end method
