.class public Lcom/htc/android/epst/CdmaSettingUpdater;
.super Ljava/lang/Object;
.source "CdmaSettingUpdater.java"

# interfaces
.implements Lcom/htc/android/epst/SettingValueUpdater;


# instance fields
.field private gbRTN:Z

.field private gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

.field private mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

.field private mEpstActivity:Lcom/htc/android/epst/EPST;

.field private mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

.field private mNAMActivity:Lcom/htc/android/epst/HtcNAM;

.field private mSettingGroup:Lcom/htc/android/epst/SettingGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gbRTN:Z

    .line 17
    iput-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/CdmaSettingUpdater;)Lcom/htc/android/epst/SettingGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    return-object v0
.end method


# virtual methods
.method public anthenticate(Lcom/htc/android/epst/EPST;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    .line 93
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/htc/android/epst/Port;->enterPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public anthenticate(Lcom/htc/android/epst/HtcNAM;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    .line 104
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/htc/android/epst/Port;->enterPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public anthenticate(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

    .line 99
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/htc/android/epst/Port;->enterPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public anthenticateOTKSL(Lcom/htc/android/epst/EPST;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    .line 127
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/htc/android/epst/Port;->enterOTKSLPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public anthenticateOTKSL(Lcom/htc/android/epst/HtcNAM;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    .line 121
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/htc/android/epst/Port;->enterOTKSLPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public clearGPS(Lcom/htc/android/epst/EPST;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    .line 150
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/android/epst/Port;->clearGPS(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 158
    return-void
.end method

.method public commitChange(Lcom/htc/android/epst/CommitChangeObserver;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

    .line 70
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater$3;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/CdmaSettingUpdater$3;-><init>(Lcom/htc/android/epst/CdmaSettingUpdater;)V

    .line 76
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public getSettings(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingGroup;)V
    .locals 1
    .parameter "activity"
    .parameter "group"

    .prologue
    .line 22
    iput-object p2, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    .line 25
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/android/epst/CdmaSettingUpdater$1;-><init>(Lcom/htc/android/epst/CdmaSettingUpdater;Lcom/htc/android/epst/SettingGroup;)V

    .line 34
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method public returnDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "iMessage"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->mListItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    iput-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

    invoke-interface {v0, p1}, Lcom/htc/android/epst/CommitChangeObserver;->returnDialog(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setActivity(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    .line 166
    return-void
.end method

.method public setSettingValue(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)V
    .locals 1
    .parameter "activity"
    .parameter "item"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    .line 50
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater$2;

    invoke-direct {v0, p0, p2}, Lcom/htc/android/epst/CdmaSettingUpdater$2;-><init>(Lcom/htc/android/epst/CdmaSettingUpdater;Lcom/htc/android/epst/SettingItem;)V

    .line 57
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public showRebootPrompt()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->showRebootPrompt()V

    .line 170
    return-void
.end method

.method public update(IILjava/lang/String;)V
    .locals 1
    .parameter "itemId"
    .parameter "result"
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/epst/ListItemsActivity;->updateSettingValue(IILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public updateAllSettings()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->updateAllSettingValues()V

    .line 65
    return-void
.end method

.method public updateAuthResult(Z)V
    .locals 2
    .parameter "isSuccessful"

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/EPST;->authenticateResult(Z)V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/ListItemsActivity;->authenticateResult(Z)V

    .line 111
    iput-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->gmCKAListItem:Lcom/htc/android/epst/ListItemsActivity;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/HtcNAM;->authenticateResult(Z)V

    .line 114
    iput-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    goto :goto_0
.end method

.method public updateClearGPSResult(Z)V
    .locals 1
    .parameter "isSuccessful"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/EPST;->clearGPSResult(Z)V

    .line 162
    return-void
.end method

.method public updateCommitResult(II)V
    .locals 1
    .parameter "successCount"
    .parameter "failedCount"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mCommitObserver:Lcom/htc/android/epst/CommitChangeObserver;

    invoke-interface {v0, p1, p2}, Lcom/htc/android/epst/CommitChangeObserver;->updateCommitResult(II)V

    .line 81
    return-void
.end method

.method public updateOTKSLAuthResult(Z)V
    .locals 1
    .parameter "isSuccessful"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/HtcNAM;->authenticateResult(Z)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mNAMActivity:Lcom/htc/android/epst/HtcNAM;

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater;->mEpstActivity:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/EPST;->authenticateResult(Z)V

    goto :goto_0
.end method
