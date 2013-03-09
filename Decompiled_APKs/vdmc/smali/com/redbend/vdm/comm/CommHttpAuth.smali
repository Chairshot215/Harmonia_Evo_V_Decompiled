.class public Lcom/redbend/vdm/comm/CommHttpAuth;
.super Ljava/lang/Object;
.source "CommHttpAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    }
.end annotation


# instance fields
.field private _level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

.field private _usernamePwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/comm/CommHttpAuth$Level;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "usernamePwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v1, v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v0, v1}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v0

    .line 45
    :cond_0
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 46
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v1, v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v0, v1}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 49
    if-eqz p2, :cond_2

    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    .line 52
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/comm/CommHttpAuth;)V
    .locals 2
    .parameter "auth"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 63
    iget-object v0, p1, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    return-object v0
.end method

.method public toHttpHeaderField()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    sget-object v2, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/String;

    .end local v0           #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_level:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    invoke-virtual {v1}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v0       #str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdm/comm/CommHttpAuth;->_usernamePwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0
.end method
