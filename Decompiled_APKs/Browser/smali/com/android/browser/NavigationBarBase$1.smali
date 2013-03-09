.class Lcom/android/browser/NavigationBarBase$1;
.super Ljava/lang/Object;
.source "NavigationBarBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavigationBarBase;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavigationBarBase;

.field final synthetic val$currentTab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/NavigationBarBase;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/browser/NavigationBarBase$1;->this$0:Lcom/android/browser/NavigationBarBase;

    iput-object p2, p0, Lcom/android/browser/NavigationBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase$1;->this$0:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->clearFocus()V

    .line 221
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/NavigationBarBase$1;->this$0:Lcom/android/browser/NavigationBarBase;

    iget-boolean v0, v0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase$1;->this$0:Lcom/android/browser/NavigationBarBase;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method
