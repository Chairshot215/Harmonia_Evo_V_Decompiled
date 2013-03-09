.class public Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;
.super Ljava/lang/Object;
.source "WrapperComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mComment:Lcom/htc/opensense/social/data/Comment;

.field private mFormatedComment:Ljava/lang/CharSequence;

.field private mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

.field private mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

.field private mSzSeparatorName:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Comment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    return-void
.end method


# virtual methods
.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-wide v1, v1, Lcom/htc/opensense/social/data/Comment;->time:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOwnerAvatar()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getTime()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    iget-wide v0, v2, Lcom/htc/opensense/social/data/Comment;->time:J

    :cond_0
    return-wide v0
.end method

.method public setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    return-void
.end method
