.class Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;
.super Landroid/os/AsyncTask;
.source "ContactGroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ContactGroupDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContactGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ContactGroupDialogPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ContactGroupDialogPicker;Lcom/htc/android/mail/ContactGroupDialogPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;-><init>(Lcom/htc/android/mail/ContactGroupDialogPicker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 12
    .parameter "contactGroups"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    .line 48
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "deleted = 0"

    .line 49
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    .line 50
    .local v1, groupNameUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 51
    const/4 v9, 0x0

    .line 52
    .local v9, groups:[Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/CharSequence;

    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    #setter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mDecodedGroupName:[Ljava/lang/CharSequence;
    invoke-static {v0, v4}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$102(Lcom/htc/android/mail/ContactGroupDialogPicker;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 57
    const/4 v10, 0x0

    .line 58
    .local v10, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, group:Ljava/lang/String;
    aget-object v0, p1, v11

    if-eqz v0, :cond_0

    aget-object v0, p1, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    #setter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I
    invoke-static {v0, v10}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$202(Lcom/htc/android/mail/ContactGroupDialogPicker;I)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    #getter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mDecodedGroupName:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$100(Lcom/htc/android/mail/ContactGroupDialogPicker;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v7, v0, v10

    .line 62
    const-string v0, "group_is_read_only"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 63
    .local v8, group_is_readonly:I
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 65
    aput-object v7, v9, v10

    .line 66
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    .end local v7           #group:Ljava/lang/String;
    .end local v8           #group_is_readonly:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    .end local v10           #i:I
    :cond_2
    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->onPostExecute([Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "groups"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 78
    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    #getter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I
    invoke-static {v1}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$200(Lcom/htc/android/mail/ContactGroupDialogPicker;)I

    move-result v1

    new-instance v2, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;-><init>(Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 90
    new-instance v1, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$2;-><init>(Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method
