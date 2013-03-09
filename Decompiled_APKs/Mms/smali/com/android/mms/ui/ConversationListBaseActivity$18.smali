.class Lcom/android/mms/ui/ConversationListBaseActivity$18;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->getSortByDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3875
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$18;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3877
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$18;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3878
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    .line 3879
    const/4 v0, 0x0

    .line 3880
    .local v0, IsNeedQuery:Z
    const-string v3, "pref_SortBy"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pref_SortBy"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_1

    :cond_0
    const-string v3, "pref_SortBy"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 3883
    :cond_1
    const/4 v0, 0x1

    .line 3884
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3885
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_SortBy"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3886
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3887
    if-eqz v0, :cond_3

    .line 3889
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$18;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->startQueryConversation()V

    .line 3892
    .end local v0           #IsNeedQuery:Z
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3893
    return-void
.end method
