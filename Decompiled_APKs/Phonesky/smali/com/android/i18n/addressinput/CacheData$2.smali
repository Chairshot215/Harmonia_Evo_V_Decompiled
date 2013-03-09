.class Lcom/android/i18n/addressinput/CacheData$2;
.super Ljava/lang/Object;
.source "CacheData.java"

# interfaces
.implements Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/CacheData;->fetchDynamicData(Lcom/android/i18n/addressinput/LookupKey;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
        "<",
        "Lcom/android/i18n/addressinput/JsoMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/CacheData;

.field final synthetic val$handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;

.field final synthetic val$key:Lcom/android/i18n/addressinput/LookupKey;

.field final synthetic val$listener:Lcom/android/i18n/addressinput/DataLoadListener;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;Lcom/android/i18n/addressinput/CacheData$JsonHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/i18n/addressinput/CacheData$2;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iput-object p2, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    iput-object p3, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    iput-object p4, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "caught"

    .prologue
    .line 316
    const-string v0, "CacheData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData$2;->this$0:Lcom/android/i18n/addressinput/CacheData;

    #getter for: Lcom/android/i18n/addressinput/CacheData;->mRequestedKeys:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/i18n/addressinput/CacheData;->access$600(Lcom/android/i18n/addressinput/CacheData;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData$2;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/i18n/addressinput/CacheData;->notifyListenersAfterJobDone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/CacheData;->access$100(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData$2;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    #calls: Lcom/android/i18n/addressinput/CacheData;->triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/CacheData;->access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 320
    return-void
.end method

.method public onSuccess(Lcom/android/i18n/addressinput/JsoMap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;

    #calls: Lcom/android/i18n/addressinput/CacheData$JsonHandler;->handleJson(Lcom/android/i18n/addressinput/JsoMap;)V
    invoke-static {v1, p1}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->access$500(Lcom/android/i18n/addressinput/CacheData$JsonHandler;Lcom/android/i18n/addressinput/JsoMap;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/JsoMap;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, dataRetrieved:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData$2;->this$0:Lcom/android/i18n/addressinput/CacheData;

    #getter for: Lcom/android/i18n/addressinput/CacheData;->mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;
    invoke-static {v1}, Lcom/android/i18n/addressinput/CacheData;->access$700(Lcom/android/i18n/addressinput/CacheData;)Lcom/android/i18n/addressinput/ClientCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$2;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/i18n/addressinput/ClientCacheManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, Lcom/android/i18n/addressinput/JsoMap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/CacheData$2;->onSuccess(Lcom/android/i18n/addressinput/JsoMap;)V

    return-void
.end method
