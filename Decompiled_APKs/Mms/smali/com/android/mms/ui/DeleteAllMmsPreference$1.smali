.class Lcom/android/mms/ui/DeleteAllMmsPreference$1;
.super Ljava/lang/Object;
.source "DeleteAllMmsPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeleteAllMmsPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteAllMmsPreference;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteAllMmsPreference;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->this$0:Lcom/android/mms/ui/DeleteAllMmsPreference;

    iput-object p2, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, permanent:Z
    const/4 v1, 0x0

    .line 71
    .local v1, isDeleteLocked:Z
    iget-object v10, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$checkbox:Landroid/widget/CheckBox;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 73
    :cond_0
    if-eqz v1, :cond_3

    move-object v7, v9

    .line 74
    .local v7, selection:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->this$0:Lcom/android/mms/ui/DeleteAllMmsPreference;

    #getter for: Lcom/android/mms/ui/DeleteAllMmsPreference;->mCategory:I
    invoke-static {v10}, Lcom/android/mms/ui/DeleteAllMmsPreference;->access$000(Lcom/android/mms/ui/DeleteAllMmsPreference;)I

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "htc_category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->this$0:Lcom/android/mms/ui/DeleteAllMmsPreference;

    #getter for: Lcom/android/mms/ui/DeleteAllMmsPreference;->mCategory:I
    invoke-static {v11}, Lcom/android/mms/ui/DeleteAllMmsPreference;->access$000(Lcom/android/mms/ui/DeleteAllMmsPreference;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, categoryExpr:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_5

    move-object v2, v9

    .line 77
    .local v2, messageBoxExpr:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 79
    .local v3, mmsWhere:Ljava/lang/String;
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_1
    :goto_3
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_2
    :goto_4
    const/4 v6, -0x1

    .line 92
    .local v6, result:I
    if-nez v4, :cond_9

    .line 94
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 95
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "msg_box"

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v10, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 97
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v10, v8, v3, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 103
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_5
    iget-object v9, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    return-void

    .line 73
    .end local v0           #categoryExpr:Ljava/lang/String;
    .end local v2           #messageBoxExpr:Ljava/lang/String;
    .end local v3           #mmsWhere:Ljava/lang/String;
    .end local v6           #result:I
    .end local v7           #selection:Ljava/lang/String;
    :cond_3
    const-string v7, "locked=0"

    goto/16 :goto_0

    .restart local v7       #selection:Ljava/lang/String;
    :cond_4
    move-object v0, v9

    .line 74
    goto :goto_1

    .line 75
    .restart local v0       #categoryExpr:Ljava/lang/String;
    :cond_5
    const-string v2, "msg_box > 0"

    goto :goto_2

    .line 81
    .restart local v2       #messageBoxExpr:Ljava/lang/String;
    .restart local v3       #mmsWhere:Ljava/lang/String;
    :cond_6
    if-nez v7, :cond_7

    .line 82
    move-object v3, v0

    goto :goto_3

    .line 83
    :cond_7
    if-nez v0, :cond_1

    .line 84
    move-object v3, v7

    goto :goto_3

    .line 88
    :cond_8
    if-eqz v2, :cond_2

    .line 89
    move-object v3, v2

    goto :goto_4

    .line 101
    .restart local v6       #result:I
    :cond_9
    iget-object v10, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/ui/DeleteAllMmsPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v11, v12, v3, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_5
.end method
