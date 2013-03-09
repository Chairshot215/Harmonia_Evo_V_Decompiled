.class Lcom/google/android/talk/RosterListAdapter$2$1;
.super Ljava/lang/Object;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter$2;->onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/RosterListAdapter$2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$2$1;->this$1:Lcom/google/android/talk/RosterListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$2$1;->this$1:Lcom/google/android/talk/RosterListAdapter$2;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$2;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 395
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$2$1;->this$1:Lcom/google/android/talk/RosterListAdapter$2;

    iget-object v2, v2, Lcom/google/android/talk/RosterListAdapter$2;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mAccountId:J
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 397
    const-string v1, "start_name"

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$2$1;->this$1:Lcom/google/android/talk/RosterListAdapter$2;

    iget-object v2, v2, Lcom/google/android/talk/RosterListAdapter$2;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$2000(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$2$1;->this$1:Lcom/google/android/talk/RosterListAdapter$2;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$2;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method
