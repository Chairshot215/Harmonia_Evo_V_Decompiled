.class public Lcom/htc/android/mail/MailList$BasicTabInfo;
.super Ljava/lang/Object;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicTabInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;
    }
.end annotation


# instance fields
.field private mGenericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;

.field public mName:Ljava/lang/String;

.field public mSearchUri:Landroid/net/Uri;

.field public mUnReadNumber:I

.field public mUri:Landroid/net/Uri;

.field public mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6646
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6650
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mWhere:Ljava/lang/String;

    .line 6651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mGenericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;

    .line 6652
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    .line 6684
    return-void
.end method


# virtual methods
.method public getSpecificSqlWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6660
    const-string v0, ""

    return-object v0
.end method

.method public getSqlWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6655
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getSpecificSqlWhere()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mGenericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mGenericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;->get()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mWhere:Ljava/lang/String;

    .line 6656
    iget-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mWhere:Ljava/lang/String;

    return-object v0

    .line 6655
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnreadNumber(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 6668
    const-string v3, "_read = 0"

    .line 6669
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getSqlWhere()Ljava/lang/String;

    move-result-object v7

    .line 6670
    .local v7, tmpSql:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND (_read = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6673
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v8

    .line 6674
    .local v2, projections:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6675
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 6676
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6677
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    .line 6679
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6681
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    return v0
.end method

.method public setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 6664
    iput-object p1, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mGenericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;

    .line 6665
    return-void
.end method
