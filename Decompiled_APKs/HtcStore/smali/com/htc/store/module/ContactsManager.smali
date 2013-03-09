.class public Lcom/htc/store/module/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/ContactsManager$ContactInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/htc/store/module/ContactsManager;


# instance fields
.field private mFriendId2ContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/ContactsManager$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendId2Dirty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    invoke-virtual {v0}, Lcom/htc/store/module/ContactsManager;->clear()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    .line 38
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/htc/store/module/ContactsManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/htc/store/module/ContactsManager;

    invoke-direct {v0}, Lcom/htc/store/module/ContactsManager;-><init>()V

    sput-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/htc/store/module/ContactsManager;->sInstance:Lcom/htc/store/module/ContactsManager;

    return-object v0
.end method

.method private updateCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "friendId"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    invoke-static {p1, p2}, Lcom/htc/store/util/FriendUtils;->getFriendContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/store/module/ContactsManager$ContactInfo;

    move-result-object v0

    .line 92
    .local v0, info:Lcom/htc/store/module/ContactsManager$ContactInfo;
    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v0           #info:Lcom/htc/store/module/ContactsManager$ContactInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    :cond_1
    return-void
.end method

.method public getContactId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "friendId"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .local v0, id:J
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/ContactsManager;->updateCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/ContactsManager$ContactInfo;

    iget-wide v0, v2, Lcom/htc/store/module/ContactsManager$ContactInfo;->mId:J

    .line 60
    :cond_0
    return-wide v0
.end method

.method public getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/store/module/ContactsManager$ContactInfo;
    .locals 2
    .parameter "context"
    .parameter "friendId"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, contact:Lcom/htc/store/module/ContactsManager$ContactInfo;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/ContactsManager;->updateCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contact:Lcom/htc/store/module/ContactsManager$ContactInfo;
    check-cast v0, Lcom/htc/store/module/ContactsManager$ContactInfo;

    .line 51
    .restart local v0       #contact:Lcom/htc/store/module/ContactsManager$ContactInfo;
    :cond_0
    return-object v0
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "friendId"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/ContactsManager;->updateCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2ContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/ContactsManager$ContactInfo;

    iget-object v0, v1, Lcom/htc/store/module/ContactsManager$ContactInfo;->mName:Ljava/lang/String;

    .line 69
    :cond_0
    return-object v0
.end method

.method public setCacheDirty()V
    .locals 5

    .prologue
    .line 73
    iget-object v3, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 74
    .local v2, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/module/ContactsManager;->mFriendId2Dirty:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method
