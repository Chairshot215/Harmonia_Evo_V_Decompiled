.class public abstract Lcom/google/android/voicesearch/actions/VoiceAction;
.super Ljava/lang/Object;
.source "VoiceAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected final mCountdownNeeded:Z

.field protected final mEditorNeeded:Z

.field protected final mIntentAction:Ljava/lang/String;

.field private mLazyActionString:Ljava/lang/String;

.field private mLazySubmitString:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field protected final mPrefix:Ljava/lang/String;

.field protected final mShowDisambig:Z

.field protected final mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "intentAction"
    .parameter "prefix"
    .parameter "countdownNeeded"
    .parameter "editorNeeded"
    .parameter "showDisambig"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLock:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    .line 87
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    .line 89
    iput-boolean p5, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    .line 90
    iput-boolean p6, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    .line 91
    iput-boolean p7, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLock:Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazyActionString:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazySubmitString:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    .line 105
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    :cond_2
    move v1, v2

    .line 104
    goto :goto_2
.end method

.method private getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .parameter "context"

    .prologue
    .line 144
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentData(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentType()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 153
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    :cond_0
    return-object v2

    .line 150
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected createActionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 560
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, language:Ljava/lang/String;
    const-string v2, "_action_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 564
    .local v0, action:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected createSubmitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, packageName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_submit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 577
    .local v0, identifier:I
    const/4 v3, 0x0

    .line 578
    .local v3, submit:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 581
    :cond_0
    if-nez v3, :cond_1

    const v4, 0x7f0a0721

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3           #submit:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLoggingString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazyActionString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->createActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazyActionString:Ljava/lang/String;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazyActionString:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 1
    .parameter "context"

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 283
    const/high16 v0, -0x4080

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCountdownIcon()I
.end method

.method public getFirstTimeUseDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 482
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 136
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    return-object v1
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntentData(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method protected getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentFlags()I
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldWaitForActivityResult()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/high16 v1, 0x1400

    or-int/2addr v0, v1

    .line 408
    :cond_0
    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getListIcon()I
.end method

.method public getListSubtitle()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitleHtml()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, html:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public getListSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListTitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 2
    .parameter "context"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, html:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getQsbIcon()I
.end method

.method public getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIcon()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/util/ResourceUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitleHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundId()I
    .locals 1

    .prologue
    .line 500
    const v0, 0x7f070006

    return v0
.end method

.method public getSubmitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazySubmitString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->createSubmitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazySubmitString:Ljava/lang/String;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazySubmitString:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    return v0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 462
    const v0, 0x7f0a07e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCountdownNeeded()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    return v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    return v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 295
    return-void
.end method

.method public setForwardApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 509
    return-void
.end method

.method public shouldAddShortcut()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDisambig()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    return v0
.end method

.method public shouldWaitForActivityResult()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public shouldWatchForQuickReturns()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazyActionString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mLazySubmitString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    :cond_2
    move v1, v2

    .line 118
    goto :goto_2
.end method
