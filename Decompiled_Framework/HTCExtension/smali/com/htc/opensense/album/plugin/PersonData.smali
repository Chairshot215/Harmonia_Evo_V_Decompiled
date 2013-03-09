.class public Lcom/htc/opensense/album/plugin/PersonData;
.super Lcom/htc/opensense/social/data/Person;
.source "PersonData.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    iput-object p3, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object p4, v0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    :cond_0
    return-void
.end method
