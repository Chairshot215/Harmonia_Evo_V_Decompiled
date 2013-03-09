.class final Lcom/android/htccontacts/model/AccountTypeManagerImpl$3;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/accounts/Account;Landroid/accounts/Account;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, aDataSet:Ljava/lang/String;
    const/4 v1, 0x0

    .line 296
    .local v1, bDataSet:Ljava/lang/String;
    instance-of v3, p1, Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 297
    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v0, v3, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 299
    :cond_0
    instance-of v3, p2, Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 300
    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v3, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 303
    :cond_1
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    const/4 v2, 0x0

    .line 324
    :cond_2
    :goto_0
    return v2

    .line 306
    :cond_3
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    move v2, v5

    .line 307
    goto :goto_0

    .line 308
    :cond_5
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_6
    move v2, v4

    .line 309
    goto :goto_0

    .line 311
    :cond_7
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 312
    .local v2, diff:I
    if-nez v2, :cond_2

    .line 315
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 316
    if-nez v2, :cond_2

    .line 321
    if-eqz v0, :cond_9

    .line 322
    if-nez v1, :cond_8

    move v3, v4

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_9
    move v2, v5

    .line 324
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    check-cast p1, Landroid/accounts/Account;

    .end local p1
    check-cast p2, Landroid/accounts/Account;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$3;->compare(Landroid/accounts/Account;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method
