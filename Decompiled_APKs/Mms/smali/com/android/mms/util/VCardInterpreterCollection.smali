.class public final Lcom/android/mms/util/VCardInterpreterCollection;
.super Ljava/lang/Object;
.source "VCardInterpreterCollection.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# instance fields
.field private final mInterpreterCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, interpreterCollection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vcard/VCardInterpreter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    .line 34
    return-void
.end method


# virtual methods
.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public onEntryEnded()V
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 46
    .local v0, builder:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_0

    .line 48
    .end local v0           #builder:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public onEntryStarted()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 54
    .local v0, builder:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 56
    .end local v0           #builder:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 62
    .local v0, builder:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_0

    .line 64
    .end local v0           #builder:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public onVCardEnded()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 70
    .local v0, builder:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_0

    .line 72
    .end local v0           #builder:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public onVCardStarted()V
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/mms/util/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 78
    .local v0, builder:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 80
    .end local v0           #builder:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method
