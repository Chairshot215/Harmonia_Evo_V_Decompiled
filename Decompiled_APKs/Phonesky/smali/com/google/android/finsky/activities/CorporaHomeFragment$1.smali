.class Lcom/google/android/finsky/activities/CorporaHomeFragment$1;
.super Ljava/lang/Object;
.source "CorporaHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/CorporaHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/CorporaHomeFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/CorporaHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment$1;->this$0:Lcom/google/android/finsky/activities/CorporaHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment$1;->this$0:Lcom/google/android/finsky/activities/CorporaHomeFragment;

    #getter for: Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageContent:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->access$100(Lcom/google/android/finsky/activities/CorporaHomeFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment$1;->this$0:Lcom/google/android/finsky/activities/CorporaHomeFragment;

    #getter for: Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollPosition:I
    invoke-static {v2}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->access$000(Lcom/google/android/finsky/activities/CorporaHomeFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 58
    return-void
.end method
