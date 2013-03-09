.class Lcom/htc/android/epst/CdmaSettingUpdater$1;
.super Ljava/lang/Thread;
.source "CdmaSettingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/CdmaSettingUpdater;->getSettings(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

.field final synthetic val$group:Lcom/htc/android/epst/SettingGroup;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/CdmaSettingUpdater;Lcom/htc/android/epst/SettingGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater$1;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    iput-object p2, p0, Lcom/htc/android/epst/CdmaSettingUpdater$1;->val$group:Lcom/htc/android/epst/SettingGroup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/epst/CdmaSettingUpdater$1;->val$group:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/htc/android/epst/CdmaSettingUpdater$1;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    #getter for: Lcom/htc/android/epst/CdmaSettingUpdater;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v2}, Lcom/htc/android/epst/CdmaSettingUpdater;->access$000(Lcom/htc/android/epst/CdmaSettingUpdater;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/SettingItem;

    .line 30
    .local v1, item:Lcom/htc/android/epst/SettingItem;
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/epst/CdmaSettingUpdater$1;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-interface {v2, v3, v4}, Lcom/htc/android/epst/translator/Translator;->requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    .end local v1           #item:Lcom/htc/android/epst/SettingItem;
    :cond_0
    return-void
.end method
