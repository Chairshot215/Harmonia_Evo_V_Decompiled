.class public final Lcom/android/htcdialer/util/VTUtils$VTHelper;
.super Ljava/lang/Object;
.source "VTUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/VTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VTHelper"
.end annotation


# instance fields
.field mLookbackMenuId:I

.field mTestMenuId:I

.field mType:Lcom/android/htcdialer/util/VTUtils$CallType;

.field mVideoMenuId:I

.field mVoiceMenuId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "videoId"
    .parameter "voiceId"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    iput-object v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    .line 80
    iput p1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVideoMenuId:I

    .line 81
    iput p2, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVoiceMenuId:I

    .line 82
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "videoId"
    .parameter "voiceId"
    .parameter "testId"
    .parameter "lookbackId"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    iput-object v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    .line 93
    iput p1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVideoMenuId:I

    .line 94
    iput p2, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVoiceMenuId:I

    .line 95
    iput p3, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mTestMenuId:I

    .line 96
    iput p4, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mLookbackMenuId:I

    .line 97
    return-void
.end method

.method private onLookbackClicked()V
    .locals 6

    .prologue
    .line 219
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 221
    .local v1, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVTLoopBackMode()Z

    move-result v2

    .line 223
    .local v2, result:Z
    const-string v3, "VTUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPTION_MENU_ITEM_LOOPBACK_MODE result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #result:Z
    :goto_1
    return-void

    .line 226
    .restart local v1       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #result:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 227
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #result:Z
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDialer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onTestClicked()V
    .locals 6

    .prologue
    .line 203
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 206
    .local v1, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVTSimulatedMode()Z

    move-result v2

    .line 208
    .local v2, result:Z
    const-string v3, "VTUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPTION_MENU_ITEM_TESTING_VIDEO_CALL result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #result:Z
    :goto_1
    return-void

    .line 211
    .restart local v1       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #result:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 212
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #result:Z
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDialer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onVideoClicked(Lcom/android/htcdialer/widget/ButtonGroup;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 196
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->setType(Lcom/android/htcdialer/util/VTUtils$CallType;)V

    .line 197
    const v0, 0x2020001

    const v1, 0x7f0b001c

    const/4 v2, 0x0

    const v3, 0x7f09008f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 199
    return-void
.end method

.method private onVoiceClicked(Lcom/android/htcdialer/widget/ButtonGroup;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 190
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->setType(Lcom/android/htcdialer/util/VTUtils$CallType;)V

    .line 191
    const v0, 0x2020001

    const v1, 0x7f0b001c

    const/4 v2, 0x0

    const v3, 0x7f090030

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 193
    return-void
.end method


# virtual methods
.method public attachCallType(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 233
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    iget-object v1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    if-ne v0, v1, :cond_0

    .line 234
    const-string v0, "isVTCall"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "isVTCall"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createMenus(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVideoMenuId:I

    const v1, 0x7f09008e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809e3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    iget v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVoiceMenuId:I

    const v1, 0x7f09008d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    return-void
.end method

.method public createTestMenus(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 120
    iget v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mTestMenuId:I

    const-string v1, "Enable VT test"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 121
    iget v0, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mLookbackMenuId:I

    const-string v1, "Enable lookback"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 122
    return-void
.end method

.method public onMenuSelected(ILcom/android/htcdialer/widget/ButtonGroup;)Z
    .locals 4
    .parameter "id"
    .parameter "bar"

    .prologue
    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, consumed:Z
    iget v1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVoiceMenuId:I

    if-ne p1, v1, :cond_0

    .line 170
    invoke-direct {p0, p2}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onVoiceClicked(Lcom/android/htcdialer/widget/ButtonGroup;)V

    .line 186
    :goto_0
    return v0

    .line 171
    :cond_0
    iget v1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVideoMenuId:I

    if-ne p1, v1, :cond_1

    .line 172
    invoke-direct {p0, p2}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onVideoClicked(Lcom/android/htcdialer/widget/ButtonGroup;)V

    goto :goto_0

    .line 173
    :cond_1
    iget v1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mTestMenuId:I

    if-ne p1, v1, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onTestClicked()V

    goto :goto_0

    .line 175
    :cond_2
    iget v1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mLookbackMenuId:I

    if-ne p1, v1, :cond_3

    .line 176
    invoke-direct {p0}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onLookbackClicked()V

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    .line 182
    const-string v1, "VTUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuSelected: unknown menu id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareMenus(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 125
    const/4 v1, 0x1

    .line 126
    .local v1, voice:Z
    const/4 v0, 0x0

    .line 127
    .local v0, video:Z
    sget-object v2, Lcom/android/htcdialer/util/VTUtils$CallType;->VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    iget-object v3, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    if-ne v2, v3, :cond_1

    .line 128
    const/4 v1, 0x1

    .line 129
    const/4 v0, 0x0

    .line 134
    :goto_0
    iget v2, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVoiceMenuId:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    iget v2, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mVideoMenuId:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    sget-boolean v2, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->prepareTestMenus(Landroid/view/Menu;)V

    .line 140
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public prepareTestMenus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    .line 144
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 146
    .local v3, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getVTSimulatedMode()Z

    move-result v4

    .line 147
    .local v4, testingMode:Z
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getVTLoopBackMode()Z

    move-result v1

    .line 149
    .local v1, loopbackMode:Z
    iget v5, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mTestMenuId:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 150
    .local v2, menuItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 151
    const-string v5, "Disable VT test"

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    :goto_0
    iget v5, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mLookbackMenuId:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 157
    if-eqz v1, :cond_1

    .line 158
    const-string v5, "Disable lookback"

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 165
    .end local v1           #loopbackMode:Z
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .end local v3           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #testingMode:Z
    :goto_1
    return-void

    .line 153
    .restart local v1       #loopbackMode:Z
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    .restart local v3       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #testingMode:Z
    :cond_0
    const-string v5, "Enable VT test"

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1           #loopbackMode:Z
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .end local v3           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #testingMode:Z
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcDialer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #loopbackMode:Z
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    .restart local v3       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #testingMode:Z
    :cond_1
    :try_start_1
    const-string v5, "Enable lookback"

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setType(Lcom/android/htcdialer/util/VTUtils$CallType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    .line 247
    return-void
.end method

.method public updateBarByType(Lcom/android/htcdialer/widget/ButtonGroup;Z)V
    .locals 4
    .parameter "bar"
    .parameter "force"

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    sget-object v1, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    iget-object v2, p0, Lcom/android/htcdialer/util/VTUtils$VTHelper;->mType:Lcom/android/htcdialer/util/VTUtils$CallType;

    if-ne v1, v2, :cond_0

    const v0, 0x7f090030

    .line 104
    .local v0, resId:I
    :goto_0
    const v1, 0x2020001

    const v2, 0x7f0b001c

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 109
    .end local v0           #resId:I
    :goto_1
    return-void

    .line 101
    :cond_0
    const v0, 0x7f09008f

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "VTUtils"

    const-string v2, "updateTextByType: no text view is given!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
