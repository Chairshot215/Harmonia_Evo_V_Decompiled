.class Lcom/google/android/gm/TwoPaneActivityController$2;
.super Ljava/lang/Object;
.source "TwoPaneActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActivityController;->onSearchResultLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivityController$2;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$2;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 513
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$2;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->showConversationAtCursor(Z)V

    .line 514
    return-void
.end method
