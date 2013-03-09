.class public Lcom/android/i18n/addressinput/AddressProblems;
.super Ljava/lang/Object;
.source "AddressProblems.java"


# instance fields
.field private mProblems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method add(Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;)V
    .locals 1
    .parameter "addressField"
    .parameter "problem"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;
    .locals 1
    .parameter "addressField"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressProblemType;

    return-object v0
.end method

.method public getProblems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressProblems;->mProblems:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
