.class Lcom/android/mms/ui/TraditionalList$1;
.super Landroid/content/BroadcastReceiver;
.source "TraditionalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$1;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$1;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0
.end method
