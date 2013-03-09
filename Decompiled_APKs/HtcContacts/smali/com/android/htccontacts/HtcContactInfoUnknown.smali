.class public Lcom/android/htccontacts/HtcContactInfoUnknown;
.super Lcom/android/htccontacts/HtcContactInfoBase;
.source "HtcContactInfoUnknown.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcContactInfoUnknown"


# instance fields
.field private mMail:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field private mUnknownMailType:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p2}, Lcom/android/htccontacts/HtcContactInfoBase;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    .line 39
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mMail:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    .line 42
    iput v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .parameter "mail"
    .parameter "mailType"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p3}, Lcom/android/htccontacts/HtcContactInfoBase;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mMail:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    .line 50
    iput v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 52
    return-void
.end method

.method private getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateNumberType()V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/htc/util/contacts/PhoneUtils;->getEmergencyNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, emergencyNums:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, voiceMailNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberType:I

    .line 110
    return-void
.end method


# virtual methods
.method declared-synchronized buildAllInfo()V
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mMail:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 59
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->updateEmails()V

    .line 79
    :goto_0
    const-string v1, "CONTACT_INFO_COMPLETED"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/htccontacts/HtcContactInfoUnknown;->notifyChanges(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0a016e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 72
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 73
    .local v0, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mType:I

    .line 74
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->updateNumberType()V

    .line 77
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    .end local v0           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 63
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0187

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method closeAllCursors()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public getDefaultMailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mMail:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isUnknownMailType()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mUnknownMailType:Z

    return v0
.end method

.method protected updateEmails()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 117
    .local v0, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoUnknown;->mMail:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method
