.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcBaseLoginDataRowHandler"
.end annotation


# instance fields
.field mAccountType:Ljava/lang/String;

.field mMimetype:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 14961
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 14962
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 14958
    iput-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mMimetype:Ljava/lang/String;

    .line 14959
    iput-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mAccountType:Ljava/lang/String;

    .line 14963
    iput-object p5, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mMimetype:Ljava/lang/String;

    .line 14964
    iput-object p6, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mAccountType:Ljava/lang/String;

    .line 14965
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 2
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 15015
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 15016
    .local v0, numDeleted:I
    if-lez v0, :cond_0

    .line 15017
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mAccountType:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/util/contacts/SNLinkUtils;->removeLoginId(Ljava/lang/String;)V

    .line 15022
    :cond_0
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 4
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14974
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 14977
    .local v0, dataId:J
    const-string v3, "data1"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14978
    const-string v3, "data1"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14982
    .local v2, sActiveUserId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14984
    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mAccountType:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/htc/util/contacts/SNLinkUtils;->setLoginId(Ljava/lang/String;Ljava/lang/String;)V

    .line 14989
    .end local v2           #sActiveUserId:Ljava/lang/String;
    :cond_0
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 2
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14998
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 14999
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15000
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15002
    .local v0, sActiveUserId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15003
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->mAccountType:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/htc/util/contacts/SNLinkUtils;->setLoginId(Ljava/lang/String;Ljava/lang/String;)V

    .line 15007
    .end local v0           #sActiveUserId:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
