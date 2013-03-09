.class public Lcom/google/android/gm/utils/CustomFromUtils;
.super Ljava/lang/Object;
.source "CustomFromUtils.java"


# static fields
.field public static ACCOUNT_ADDRESS:I

.field public static ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static ACCOUNT_DISPLAY:I

.field public static ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static IS_DEFAULT:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static REAL_ACCOUNT:I

.field public static REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

.field public static REPLY_TO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "name"

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->NAME:Ljava/lang/String;

    .line 22
    const-string v0, "reply_to"

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_TO:Ljava/lang/String;

    .line 24
    const-string v0, "is_default"

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->IS_DEFAULT:Ljava/lang/String;

    .line 26
    const-string v0, "bx_rf"

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gm/utils/CustomFromUtils;->REAL_ACCOUNT:I

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateCustomFrom(Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;)V
    .locals 5
    .parameter "account"
    .parameter "entry"

    .prologue
    .line 69
    sget-object v1, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .local v0, customFrom:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0           #customFrom:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 72
    .restart local v0       #customFrom:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v1, p1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->replyTo:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->replyTo:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->isDefault:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static clearCustomFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, replyFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .local v0, replyFromEntry:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 138
    .end local v0           #replyFromEntry:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public static getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "account"

    .prologue
    .line 224
    invoke-static {p0}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 225
    .local v2, replyFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 227
    .local v0, entry:[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const/4 v3, 0x1

    aget-object p0, v0, v3

    .line 232
    .end local v0           #entry:[Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static getReplyFromAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "account"
    .parameter "sentTo"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/google/android/gm/utils/CustomFromUtils;->replyFromDefaultAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    .end local p1
    :goto_0
    return-object p1

    .line 208
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 209
    .local v2, replyFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 210
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 211
    .local v0, entry:[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const/4 v3, 0x1

    aget-object p1, v0, v3

    goto :goto_0

    .end local v0           #entry:[Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    move-object p1, p0

    .line 216
    goto :goto_0
.end method

.method public static instantiateCustomFrom(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 8
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 105
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 108
    .local v0, customFrom:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->NAME:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, nameCol:I
    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_TO:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, replyToCol:I
    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->IS_DEFAULT:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, isDefaultCol:I
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v0           #customFrom:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1           #isDefaultCol:I
    .end local v2           #nameCol:I
    .end local v3           #replyToCol:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public static instantiateReplyFromDefaultAddress(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 4
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, value:Z
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "value"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, valueCol:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, strValue:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/google/android/gm/utils/CustomFromUtils;->setReplyFromDefaultAddress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0           #strValue:Ljava/lang/String;
    .end local v2           #valueCol:I
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static isCustomFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "address"

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 37
    .local v5, tokens:[Landroid/text/util/Rfc822Token;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 38
    .local v4, recipientsMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 39
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 43
    .local v0, customFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 45
    .local v1, entry:[Ljava/lang/String;
    sget v6, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    const/4 v6, 0x1

    .line 50
    .end local v1           #entry:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static removeCustomFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "customFrom"

    .prologue
    .line 87
    sget-object v1, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_CUSTOM_FROM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .local v0, customFroms:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-void
.end method

.method public static replyFromDefaultAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 187
    sget-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setReplyFromDefaultAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "strValue"

    .prologue
    .line 171
    const/4 v0, 0x1

    .line 174
    .local v0, value:Z
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 177
    :cond_1
    sget-object v1, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_REPLY_FROM_DEFAULT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method
