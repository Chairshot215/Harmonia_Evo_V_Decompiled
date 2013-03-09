.class Lcom/android/i18n/addressinput/CacheData$1;
.super Ljava/lang/Object;
.source "CacheData.java"

# interfaces
.implements Lcom/android/i18n/addressinput/CacheData$CacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/CacheData;->fetchDynamicData(Lcom/android/i18n/addressinput/LookupKey;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/CacheData;

.field final synthetic val$listener:Lcom/android/i18n/addressinput/DataLoadListener;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/i18n/addressinput/CacheData$1;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iput-object p2, p0, Lcom/android/i18n/addressinput/CacheData$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;)V
    .locals 2
    .parameter "myKey"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData$1;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    #calls: Lcom/android/i18n/addressinput/CacheData;->triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/CacheData;->access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 288
    return-void
.end method
