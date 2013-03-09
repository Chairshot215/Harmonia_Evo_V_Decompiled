.class public final Lcom/htc/util/contacts/SyncControl$ExceptionSync;
.super Lcom/htc/util/contacts/SyncControl$SyncUnit;
.source "SyncControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SyncControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionSync"
.end annotation


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/htc/util/contacts/SyncControl$SyncUnit;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 214
    return-void
.end method


# virtual methods
.method public accountEquals(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public accountTypeEquals(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public authorityEquals(Ljava/lang/String;)Z
    .locals 1
    .parameter "authority"

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    instance-of v3, p1, Lcom/htc/util/contacts/SyncControl$SyncUnit;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;

    .line 220
    .local v0, other:Lcom/htc/util/contacts/SyncControl$SyncUnit;
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authority:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authority:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionSync [Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Authority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
