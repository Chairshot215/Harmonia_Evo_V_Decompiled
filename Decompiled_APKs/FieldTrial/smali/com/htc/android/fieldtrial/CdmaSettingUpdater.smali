.class public Lcom/htc/android/fieldtrial/CdmaSettingUpdater;
.super Ljava/lang/Object;
.source "CdmaSettingUpdater.java"

# interfaces
.implements Lcom/htc/android/fieldtrial/SettingValueUpdater;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mFieldTrialActivity:Lcom/htc/android/fieldtrial/FieldTrial;

.field private mItemsActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;

.field private mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "FieldTrialCdmaSettingUpdater"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anthenticate(Lcom/htc/android/fieldtrial/FieldTrial;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mFieldTrialActivity:Lcom/htc/android/fieldtrial/FieldTrial;

    .line 42
    new-instance v0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;-><init>(Lcom/htc/android/fieldtrial/CdmaSettingUpdater;Lcom/htc/android/fieldtrial/FieldTrial;)V

    .line 54
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public getSettings(Lcom/htc/android/fieldtrial/ListItemsActivity;Lcom/htc/android/fieldtrial/SettingGroup;)V
    .locals 4
    .parameter "activity"
    .parameter "group"

    .prologue
    .line 17
    iput-object p2, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    .line 18
    iput-object p1, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/fieldtrial/SettingItem;

    .line 22
    .local v1, item:Lcom/htc/android/fieldtrial/SettingItem;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getTranslator()Lcom/htc/android/fieldtrial/translator/Translator;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p0}, Lcom/htc/android/fieldtrial/translator/Translator;->requestReadSettingValue(ILcom/htc/android/fieldtrial/SettingValueUpdater;)V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v1           #item:Lcom/htc/android/fieldtrial/SettingItem;
    :cond_0
    return-void
.end method

.method public update(IILjava/lang/String;)V
    .locals 1
    .parameter "itemId"
    .parameter "result"
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mItemsActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/fieldtrial/ListItemsActivity;->updateSettingValue(IILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public updateAuthResult(Z)V
    .locals 1
    .parameter "isSuccessful"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->mFieldTrialActivity:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0, p1}, Lcom/htc/android/fieldtrial/FieldTrial;->onAuthenticateResult(Z)V

    .line 59
    return-void
.end method
