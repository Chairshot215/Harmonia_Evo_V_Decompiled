.class public Lcom/htc/omadm/libdo/system/LockCtl;
.super Ljava/lang/Object;
.source "LockCtl.java"


# static fields
.field private static final CMD_LOCK:Ljava/lang/String; = "LOCK"

.field private static final CMD_NOK:Ljava/lang/String; = "NOK"

.field private static final CMD_PARTIALLOCK:Ljava/lang/String; = "PARTIALLOCK"

.field private static final CMD_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final LOCK_LOCK:Ljava/lang/String; = ":DMD:LAWMO:LOCK_PARTIAL"

.field private static final LOCK_PINCODE:Ljava/lang/String; = ":DMD:LAWMO:LOCK_PINCODE"

.field private static final LOCK_SETPINCODE:Ljava/lang/String; = ":DMD:LAWMO:LOCK_SETPINCODE"

.field private static final LOCK_STATE:Ljava/lang/String; = ":DMD:LAWMO:LOCK_STATE"

.field private static final LOCK_UNLOCK:Ljava/lang/String; = ":DMD:LAWMO:LOCK_UNLOCK"

.field private static final PINCODE_DEFAULT:Ljava/lang/String; = "nnnnnnnn"

.field private static final TAG:Ljava/lang/String; = "LockCtl"

.field private static mInstance:Lcom/htc/omadm/libdo/system/LockCtl;


# instance fields
.field private LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/LockCtl;->mInstance:Lcom/htc/omadm/libdo/system/LockCtl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    .line 30
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/LockCtl;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/htc/omadm/libdo/system/Dmdcmd;->getInstance()Lcom/htc/omadm/libdo/system/Dmdcmd;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    .line 32
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/LockCtl;
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/htc/omadm/libdo/system/LockCtl;->mInstance:Lcom/htc/omadm/libdo/system/LockCtl;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/LockCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/LockCtl;->mInstance:Lcom/htc/omadm/libdo/system/LockCtl;

    .line 38
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/LockCtl;->mInstance:Lcom/htc/omadm/libdo/system/LockCtl;

    return-object v0
.end method


# virtual methods
.method public FullLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, -0x1

    .line 73
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v3, ":DMD:LAWMO:LOCK_PARTIAL"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, instring:Ljava/lang/String;
    const-string v2, "LockCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instring: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "LOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v1, 0x1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    const-string v2, "NOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public GetPinCodeFromSB()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v2, ":DMD:LAWMO:LOCK_PINCODE"

    invoke-virtual {v1, v2}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, instring:Ljava/lang/String;
    const-string v1, "LockCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instring: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "nnnnnnnn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v0, ""

    .line 97
    .end local v0           #instring:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public PartialLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, -0x1

    .line 83
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v3, ":DMD:LAWMO:LOCK_PARTIAL"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, instring:Ljava/lang/String;
    const-string v2, "LockCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instring: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "PARTIALLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const/4 v1, 0x1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    const-string v2, "NOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public QueryLock()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 43
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v3, ":DMD:LAWMO:LOCK_STATE"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, instring:Ljava/lang/String;
    const-string v2, "LockCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instring: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v2, "UNLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v1, 0x0

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    const-string v2, "PARTIALLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "LOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const/4 v1, 0x2

    goto :goto_0

    .line 51
    :cond_3
    const-string v2, "NOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public SetPinCodeToSB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pincode"

    .prologue
    .line 101
    const-string v1, "LockCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPinCodeToSB: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":DMD:LAWMO:LOCK_SETPINCODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, instring:Ljava/lang/String;
    const-string v1, "LockCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instring: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v0
.end method

.method public UnLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/LockCtl;->GetPinCodeFromSB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "LockCtl"

    const-string v3, "Pin code is match, unlock available."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/LockCtl;->LockCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v3, ":DMD:LAWMO:LOCK_UNLOCK"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/system/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, instring:Ljava/lang/String;
    const-string v2, "LockCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instring: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "UNLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v1, "nnnnnnnn"

    invoke-virtual {p0, v1}, Lcom/htc/omadm/libdo/system/LockCtl;->SetPinCodeToSB(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    const/4 v1, 0x1

    .line 69
    .end local v0           #instring:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 66
    .restart local v0       #instring:Ljava/lang/String;
    :cond_1
    const-string v2, "NOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
