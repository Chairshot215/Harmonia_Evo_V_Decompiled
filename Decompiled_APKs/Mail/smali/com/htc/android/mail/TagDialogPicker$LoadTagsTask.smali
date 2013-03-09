.class Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;
.super Landroid/os/AsyncTask;
.source "TagDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/TagDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTagsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/TagDialogPicker;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/TagDialogPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/TagDialogPicker;Lcom/htc/android/mail/TagDialogPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;-><init>(Lcom/htc/android/mail/TagDialogPicker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, -0x1

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v11, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    const v12, 0x7f0b0192

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/TagDialogPicker;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$300(Lcom/htc/android/mail/TagDialogPicker;)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v0, v11, v13

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    const/4 v11, 0x0

    #setter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I
    invoke-static {v0, v11}, Lcom/htc/android/mail/TagDialogPicker;->access$402(Lcom/htc/android/mail/TagDialogPicker;I)I

    .line 59
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    const-string v0, "Starred"

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v7, starredSS:Landroid/text/SpannableString;
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, 0x3e8

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$300(Lcom/htc/android/mail/TagDialogPicker;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v0, v11, v13

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    const/4 v11, 0x1

    #setter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I
    invoke-static {v0, v11}, Lcom/htc/android/mail/TagDialogPicker;->access$402(Lcom/htc/android/mail/TagDialogPicker;I)I

    .line 69
    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v11, "_id"

    aput-object v11, v2, v0

    const/4 v0, 0x1

    const-string v11, "_tagName"

    aput-object v11, v2, v0

    .line 70
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    .line 71
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "_id <> ?"

    .line 72
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v11, "1000"

    aput-object v11, v4, v0

    .line 73
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "_tagName collate nocase asc"

    .line 74
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/TagDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 77
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 79
    .local v8, tagId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, tagName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$300(Lcom/htc/android/mail/TagDialogPicker;)J

    move-result-wide v11

    cmp-long v0, v11, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    iget-object v11, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/android/mail/TagDialogPicker;->access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    #setter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I
    invoke-static {v0, v11}, Lcom/htc/android/mail/TagDialogPicker;->access$402(Lcom/htc/android/mail/TagDialogPicker;I)I

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/TagDialogPicker;->access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v8           #tagId:J
    .end local v10           #tagName:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 90
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/TagDialogPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 93
    iget-object v1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/TagDialogPicker;->access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I
    invoke-static {v2}, Lcom/htc/android/mail/TagDialogPicker;->access$400(Lcom/htc/android/mail/TagDialogPicker;)I

    move-result v2

    new-instance v3, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;-><init>(Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 108
    new-instance v1, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$2;-><init>(Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 114
    return-void
.end method
