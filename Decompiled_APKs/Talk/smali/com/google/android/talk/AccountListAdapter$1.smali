.class Lcom/google/android/talk/AccountListAdapter$1;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountListAdapter;->bindSigninButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountListAdapter;

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$signInButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountListAdapter;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iput-object p2, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$signInButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    #getter for: Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z
    invoke-static {v1}, Lcom/google/android/talk/AccountListAdapter;->access$000(Lcom/google/android/talk/AccountListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$signInButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    #getter for: Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v1}, Lcom/google/android/talk/AccountListAdapter;->access$100(Lcom/google/android/talk/AccountListAdapter;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 163
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$root:Landroid/view/View;

    const v2, 0x7f100010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, spinner:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .end local v0           #spinner:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    #getter for: Lcom/google/android/talk/AccountListAdapter;->mPosition:I
    invoke-static {v1}, Lcom/google/android/talk/AccountListAdapter;->access$200(Lcom/google/android/talk/AccountListAdapter;)I

    move-result v3

    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    #getter for: Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z
    invoke-static {v1}, Lcom/google/android/talk/AccountListAdapter;->access$000(Lcom/google/android/talk/AccountListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7c

    :goto_0
    #calls: Lcom/google/android/talk/AccountListAdapter;->sendMessage(II)V
    invoke-static {v2, v3, v1}, Lcom/google/android/talk/AccountListAdapter;->access$300(Lcom/google/android/talk/AccountListAdapter;II)V

    .line 167
    return-void

    .line 166
    :cond_1
    const/16 v1, 0x7b

    goto :goto_0
.end method
