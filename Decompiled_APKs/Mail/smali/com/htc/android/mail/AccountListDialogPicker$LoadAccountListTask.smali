.class Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountListDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AccountListDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
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
.field final synthetic this$0:Lcom/htc/android/mail/AccountListDialogPicker;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/AccountListDialogPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/AccountListDialogPicker;Lcom/htc/android/mail/AccountListDialogPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;-><init>(Lcom/htc/android/mail/AccountListDialogPicker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 94
    const/16 v0, 0x9

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "_desc"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "_emailaddress"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "_count"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "_defaultaccount"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "_colorIdx"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "_provider"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "_protocol"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "_providerGroup"

    aput-object v1, v9, v0

    .line 99
    .local v9, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mShowExchangeOnly:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$100(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1 AND accounts._protocol=4"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, accountAddrCursor:Landroid/database/Cursor;
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #setter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/AccountListDialogPicker;->access$202(Lcom/htc/android/mail/AccountListDialogPicker;I)I

    .line 107
    array-length v0, v9

    new-array v13, v0, [Ljava/lang/Object;

    .line 108
    .local v13, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 109
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0, v1}, Lcom/htc/android/mail/AccountListDialogPicker;->access$302(Lcom/htc/android/mail/AccountListDialogPicker;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    .line 112
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$400(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$500(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 117
    :cond_0
    const/4 v11, 0x0

    .line 118
    .local v11, totalAccount:I
    const/4 v12, 0x0

    .line 120
    .local v12, totalCount:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 122
    .local v8, count:I
    add-int/2addr v12, v8

    .line 123
    goto :goto_1

    .line 103
    .end local v6           #accountAddrCursor:Landroid/database/Cursor;
    .end local v8           #count:I
    .end local v11           #totalAccount:I
    .end local v12           #totalCount:I
    .end local v13           #values:[Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #accountAddrCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 126
    .restart local v11       #totalAccount:I
    .restart local v12       #totalCount:I
    .restart local v13       #values:[Ljava/lang/Object;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$400(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$500(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 128
    .local v7, combinedAccount:Lcom/htc/android/mail/Account;
    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 129
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v7, v1}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 130
    const/4 v0, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 134
    .end local v7           #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 138
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    const-string v0, "Verizon"

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 142
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 143
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 144
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 145
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 146
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 147
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, providerGroup:Ljava/lang/String;
    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 149
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 151
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v11, v11, 0x1

    .line 153
    goto :goto_2

    .line 158
    .end local v10           #providerGroup:Ljava/lang/String;
    :cond_5
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
    :cond_6
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const-string v0, "Verizon"

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 170
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 171
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 172
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 173
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 174
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 175
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    .restart local v10       #providerGroup:Ljava/lang/String;
    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 177
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v11, v11, 0x1

    .line 180
    goto :goto_3

    .line 181
    .end local v10           #providerGroup:Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 183
    const/4 v0, 0x1

    if-ne v11, v0, :cond_9

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/AccountListAdapter;->setOnlyOneAccount()V

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$400(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$500(Lcom/htc/android/mail/AccountListDialogPicker;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/AccountListDialogPicker;->access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/AccountListAdapter;->setNoUnreadBubble()V

    .line 187
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/AccountListDialogPicker;->access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v2}, Lcom/htc/android/mail/AccountListDialogPicker;->access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/AccountListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 193
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/AccountListDialogPicker;->access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/AccountListAdapter;->setInverseBackgroundColor(Z)V

    .line 194
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0b014b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 197
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #getter for: Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/AccountListDialogPicker;->access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;-><init>(Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 207
    new-instance v1, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;-><init>(Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 216
    return-void
.end method
