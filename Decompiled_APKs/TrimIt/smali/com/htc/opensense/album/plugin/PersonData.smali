.class public Lcom/htc/opensense/album/plugin/PersonData;
.super Lcom/htc/opensense/social/data/Person;
.source "PersonData.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pid"
    .parameter "userName"
    .parameter "displayName"
    .parameter "avatarUrl"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/PersonData;->fullname:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    .line 23
    .local v0, profile:Lcom/htc/opensense/social/data/Profile;
    if-eqz v0, :cond_0

    .line 25
    iput-object p2, v0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 26
    iput-object p3, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 27
    iput-object p4, v0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method
