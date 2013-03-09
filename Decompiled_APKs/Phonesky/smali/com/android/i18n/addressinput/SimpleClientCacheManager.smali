.class public Lcom/android/i18n/addressinput/SimpleClientCacheManager;
.super Ljava/lang/Object;
.source "SimpleClientCacheManager.java"

# interfaces
.implements Lcom/android/i18n/addressinput/ClientCacheManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getAddressServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "http://i18napis.appspot.com/address"

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "data"

    .prologue
    .line 33
    return-void
.end method
