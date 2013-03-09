.class Lcom/htc/android/epst/CdmaSettingUpdater$2;
.super Ljava/lang/Thread;
.source "CdmaSettingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/CdmaSettingUpdater;->setSettingValue(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

.field final synthetic val$item:Lcom/htc/android/epst/SettingItem;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/CdmaSettingUpdater;Lcom/htc/android/epst/SettingItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater$2;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    iput-object p2, p0, Lcom/htc/android/epst/CdmaSettingUpdater$2;->val$item:Lcom/htc/android/epst/SettingItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/epst/CdmaSettingUpdater$2;->val$item:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater$2;->val$item:Lcom/htc/android/epst/SettingItem;

    iget-object v2, p0, Lcom/htc/android/epst/CdmaSettingUpdater$2;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/translator/Translator;->requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 55
    return-void
.end method
