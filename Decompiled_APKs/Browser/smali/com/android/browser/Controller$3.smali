.class Lcom/android/browser/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->openIconDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$instance:Landroid/webkit/WebIconDatabase;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$3;->val$instance:Landroid/webkit/WebIconDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/browser/Controller$3;->val$instance:Landroid/webkit/WebIconDatabase;

    iget-object v1, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "icons"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 466
    return-void
.end method
