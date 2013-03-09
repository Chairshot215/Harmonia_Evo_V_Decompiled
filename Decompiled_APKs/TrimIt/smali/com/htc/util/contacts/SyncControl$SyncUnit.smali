.class public abstract Lcom/htc/util/contacts/SyncControl$SyncUnit;
.super Ljava/lang/Object;
.source "SyncControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SyncControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncUnit"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public authority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->account:Landroid/accounts/Account;

    .line 191
    iput-object p2, p0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->authority:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-ne p1, p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    instance-of v3, p1, Lcom/htc/util/contacts/SyncControl$SyncUnit;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;

    .line 198
    .local v0, other:Lcom/htc/util/contacts/SyncControl$SyncUnit;
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->authority:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->account:Landroid/accounts/Account;

    iget-object v4, v0, Lcom/htc/util/contacts/SyncControl$SyncUnit;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
