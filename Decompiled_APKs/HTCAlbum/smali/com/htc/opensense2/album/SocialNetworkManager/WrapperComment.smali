.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
.super Ljava/lang/Object;
.source "WrapperComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mComment:Lcom/htc/opensense/social/data/Comment;

.field private mFormatedComment:Ljava/lang/CharSequence;

.field private mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSzSeparatorName:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Comment;)V
    .locals 2
    .parameter "comment"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 31
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 32
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 33
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 41
    return-void
.end method


# virtual methods
.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-wide v1, v1, Lcom/htc/opensense/social/data/Comment;->time:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "aPerson"

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_0

    .line 112
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Comment;->id:Ljava/lang/String;

    .line 51
    :cond_0
    return-object v0
.end method

.method public getOwnerAvatar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 73
    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 62
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 84
    :cond_0
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    .line 95
    :cond_0
    return-object v0
.end method

.method public getTime()J
    .locals 3

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    .line 102
    .local v0, lTime:J
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-wide v0, v2, Lcom/htc/opensense/social/data/Comment;->time:J

    .line 107
    :cond_0
    return-wide v0
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 147
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 155
    return-void
.end method
