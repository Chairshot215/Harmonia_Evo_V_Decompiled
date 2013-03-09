.class Lcom/android/htccontacts/BrowseGroupsActivity$5;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;->clearGroup(Ljava/lang/String;)V
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
    .line 1175
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->val$title:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1178
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->val$title:Ljava/lang/String;

    .line 1179
    .local v2, groupName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->val$title:Ljava/lang/String;

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 1182
    .local v3, updateUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1183
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "starred"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$902(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z

    .line 1185
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->showProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1300(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 1186
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    move-result-object v0

    const/16 v1, 0x3f2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1199
    .end local v3           #updateUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1500(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteClearIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1205
    .end local v2           #groupName:Ljava/lang/String;
    :goto_1
    return-void

    .line 1188
    .restart local v2       #groupName:Ljava/lang/String;
    :cond_0
    const-string v0, "content://com.android.contacts/groups_member/name"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1190
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->val$title:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ((groups.account_type= \'com.google\' AND (groups.data_set is null or groups.data_set<>\'plus\')) OR ( groups.account_type<>\'com.google\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1193
    .local v9, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$902(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z

    .line 1194
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->showProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1300(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 1195
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$5;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    move-result-object v5

    const/16 v6, 0x3f2

    const/4 v10, 0x0

    move-object v7, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v2           #groupName:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #selection:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1203
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "BrowseGroupsActivity"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
