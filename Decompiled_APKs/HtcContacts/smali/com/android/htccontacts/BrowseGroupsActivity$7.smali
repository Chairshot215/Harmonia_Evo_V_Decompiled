.class Lcom/android/htccontacts/BrowseGroupsActivity$7;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;->deleteGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->val$title:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1227
    :try_start_0
    iget-object v7, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->val$title:Ljava/lang/String;

    .line 1229
    .local v7, groupName:Ljava/lang/String;
    const-string v0, "title"

    invoke-static {v0, v7}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1232
    .local v4, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$902(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z

    .line 1233
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$7;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1600(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #groupName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v6

    .line 1240
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "BrowseGroupsActivity"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
