.class Lcom/google/android/talk/RosterListAdapter$1$1;
.super Ljava/lang/Object;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter$1;->onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/RosterListAdapter$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "from"

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    iget-object v2, v2, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$1200(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    iget-object v2, v2, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$2000(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    iget-object v2, v2, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mAccountId:J
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/talk/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$1$1;->this$1:Lcom/google/android/talk/RosterListAdapter$1;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    return-void
.end method
